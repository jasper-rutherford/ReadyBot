import { TextChannel } from "discord.js";
import fs from "fs";
import express, { Request, Response } from "express";
import querystring from "querystring";
import crypto from "crypto";
import {
  DISCORD_PORT,
  SPOTIFY_CLIENT_ID,
  SPOTIFY_CLIENT_SECRET,
  SPOTIFY_LOGIN_BASE_URL,
  SPOTIFY_REFRESH_TOKEN_LOCATION,
  mustGetEnv,
} from "../env.js";

// helper function that does exactly what it says on the tin
// if no data is found then this will return null
function readRefreshTokenDataFromFile(): {
  token: string;
  expirationTimestamp: number;
} | null {
  try {
    // read the data from the file and parse it as JSON
    const data = fs.readFileSync(
      mustGetEnv(SPOTIFY_REFRESH_TOKEN_LOCATION),
      "utf8",
    );
    const parsedData = JSON.parse(data);
    return {
      token: parsedData.token,
      expirationTimestamp: parsedData.expirationTimestamp,
    };
  } catch (err) {
    console.error("Error reading refresh token from file:", err);
    return null;
  }
}

// helper function that does exactly what it says on the tin
function saveRefreshTokenDataToFile(
  token: string,
  expirationTimestamp: number,
): void {
  try {
    const data = JSON.stringify({ token, expirationTimestamp });
    fs.writeFileSync(mustGetEnv(SPOTIFY_REFRESH_TOKEN_LOCATION), data, "utf8");
    console.log("Refresh token saved to file");
  } catch (err) {
    console.error("Error saving refresh token to file:", err);
  }
}

// One way or another, this will get you a valid refresh token.
// 1. It will try to load a valid token from the disk
// 2. If that fails, it will put up a web server and prompt the user to login
// if a new token is created via option 2), then that token will be saved to disk.
export async function getRefreshToken(channel: TextChannel): Promise<string> {
  // read refresh token data from file
  let tokenData = readRefreshTokenDataFromFile();

  // if token exists and is not expired, return it
  // buffer of 20 minutes on the expiry, just to be extra safe
  if (
    tokenData &&
    tokenData.expirationTimestamp > Date.now() + 1000 * 60 * 20
  ) {
    return tokenData.token;
  }

  // otherwise, tell user to log in to spotify to authorize the bot
  await channel.send(
    `New refresh token is needed. Login to Spotify here: ${mustGetEnv(SPOTIFY_LOGIN_BASE_URL)}:${mustGetEnv(DISCORD_PORT)}/login`,
  );

  // get new refresh token data
  let token = await getNewRefreshToken();
  let timestamp = Date.now() + 1000 * 60 * 60 * 24 * 30 * 6; // expires every 6 months

  // save new token data to file
  saveRefreshTokenDataToFile(token, timestamp);

  // return token
  return token;
}

// this will get a fresh refresh token by putting up a webpage for a user to login to.
async function getNewRefreshToken(): Promise<string> {
  // when the server is created, it returns a promise which will resolve to
  // a valid refresh token once a user has successfully logged in
  const refreshTokenPromise = createWebServer();

  // wait for the refresh token to be resolved from the web server
  try {
    const refreshToken = await refreshTokenPromise;
    console.log(`refresh token received from web server: ${refreshToken}`);
    return refreshToken;
  } catch (error) {
    console.error("error getting refresh token from web server: " + error);
    throw error;
  }
}

// This function creates a web server which the user can log into to produce a refresh token.
// returns a promise that will resolve as the refresh token when the user finishes logging in,
// or will reject if there is an error
// - /login: redirects to the Spotify login page
// - /callback:
//   - handles the redirect back from Spotify after login
//   - resolves the refresh token into the promise
//   - closes the server
function createWebServer(): Promise<string> {
  // create the server
  const app = express();

  // we declare this early so that /callback can close the server after it gets the refresh token
  let server: import("http").Server;

  // generated once per server instance, this will be checked against the callback's state
  const state = crypto.randomBytes(16).toString("hex");

  // create the promise that will be resolved when the refresh token exists
  let resolvePromise: (value: string) => void;
  let rejectPromise: (reason?: Error) => void;
  const refreshTokenPromise = new Promise<string>((resolve, reject) => {
    resolvePromise = resolve;
    rejectPromise = reject;
  });

  // this is a surprise tool that will help us later
  const redirectUri = `${mustGetEnv(SPOTIFY_LOGIN_BASE_URL)}:${mustGetEnv(DISCORD_PORT)}/callback`

  // setup a login page which redirects the user to the spotify login page.
  // spotify will redirect the user to /callback when the user finishes logging in.
  app.get("/login", function (_req: Request, res: Response) {
    // the minimum scopes that are needed for the spotify api
    const scope = "user-read-private user-read-email"; // TODO

    res.redirect(
      "https://accounts.spotify.com/authorize?" +
        querystring.stringify({
          response_type: "code",
          client_id: mustGetEnv(SPOTIFY_CLIENT_ID),
          redirect_uri: redirectUri,
          scope: scope,
          state: state,
        }),
    );
  });

  // spotify will redirect the user here when the user finishes logging in.
  // it does some validation, trades the code for a refresh token,
  // and then resolves the refresh token out to the promise that was returned by createWebServer
  app.get("/callback", async (req: Request, res: Response) => {
    // read the query params
    const error = req.query.error;
    const queryState = req.query.state;
    const code = req.query.code;

    // validate the state
    if (queryState !== state) {
      console.error("Invalid state parameter");
      res.send("Invalid state parameter");
      rejectPromise(new Error("Invalid state parameter"));
      return;
    }

    // handle errors
    if (error) {
      console.error("Callback Error:", error);
      res.send(`Callback Error: ${error}`);
      rejectPromise(new Error(`Callback Error: ${error}`));
      return;
    }

    // validate the code
    if (typeof code !== "string") {
      console.error("Missing or invalid code param");
      res.send("Missing or invalid code param.");
      rejectPromise(new Error("Missing or invalid code param"));
      return;
    }

    // exchange the code for a refresh token
    try {
      const tokenResponse = await fetch(
        "https://accounts.spotify.com/api/token",
        {
          method: "POST",
          headers: {
            "content-type": "application/x-www-form-urlencoded",
            Authorization:
              "Basic " +
              Buffer.from(
                `${mustGetEnv(SPOTIFY_CLIENT_ID)}:${mustGetEnv(SPOTIFY_CLIENT_SECRET)}`,
              ).toString("base64"),
          },
          body: new URLSearchParams({
            code: code,
            redirect_uri: redirectUri,
            grant_type: "authorization_code",
          }),
        },
      );

      // check that the response is ok
      if (!tokenResponse.ok) {
        const errorBody = await tokenResponse.text();
        throw new Error(
          `Spotify token exchange failed: ${tokenResponse.status} ${errorBody}`,
        );
      }

      // extract the refresh token from the response
      const data = await tokenResponse.json();
      const refresh_token = data.refresh_token;
      console.log("Generated refresh token");
      resolvePromise(refresh_token); // yippee !!!

      // close the browser page
      closeWebPage(res);
    } catch (err) {
      console.error("Error getting Refresh Token:", err);
      res.send(`Error getting Refresh Token: ${err}`);
      rejectPromise(new Error(`Error getting Refresh Token: ${err}`));
    }

    // close the server
    server.close(() => {
      console.log("Web server closed");
    });
  });

  // start the server
  server = app.listen(mustGetEnv(DISCORD_PORT), () =>
    console.log(
      `HTTP Server up, ${mustGetEnv(SPOTIFY_LOGIN_BASE_URL)}:${mustGetEnv(DISCORD_PORT)}/login is now available.`,
    ),
  );

  // return the promise that will be resolved when the refresh token is received
  return refreshTokenPromise;
}

// TODO: this doesnt work... sometimes.
// TODO also put this in a separate file mayhaps?
function closeWebPage(res: Response) {
  // send an html page to the user that closes after a few seconds
  res.send(`
        <html>
        <head>
            <title>Redirecting...</title>
            <style>
                #success {
                    font-size: 20px;
                    text-align: center;
                    margin-top: 100px;
                }
            </style>
        </head>
        <body>
            <div id="success">Successfully logged into Spotify! You may now close this window.</div>
            <script>
                // in 5 seconds, try to close the window
                let countdown = 5;
                function updateCountdown() {
                    countdown--;
                    if (countdown === 0) {
                        window.close();
                    } else {
                        setTimeout(updateCountdown, 1000);
                    }
                }

                // Start the countdown
                updateCountdown();
            </script>
        </body>
        </html>
    `);
}

// use a refresh token to get a fresh access token
export async function refreshAccessToken(
  refreshToken: string,
): Promise<string> {
  // set headers...
  let headers = {
    "Content-Type": "application/x-www-form-urlencoded",
    Authorization: `Basic ${Buffer.from(`${mustGetEnv(SPOTIFY_CLIENT_ID)}:${mustGetEnv(SPOTIFY_CLIENT_SECRET)}`).toString("base64")}`,
  };

  // set body stuff...
  let body = new URLSearchParams({
    grant_type: "refresh_token",
    refresh_token: refreshToken,
    client_id: mustGetEnv(SPOTIFY_CLIENT_ID),
  });

  // send the request
  const result = await fetch("https://accounts.spotify.com/api/token", {
    method: "POST",
    headers: headers,
    body: body,
  });

  // parse response as json
  const response = await result.json();

  // check no error
  if (!result.ok) {
    throw new Error(`Token refresh failed: ${response.error}`);
  }

  // great work everyone
  return response.access_token;
}
