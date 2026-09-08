import { TextChannel } from "discord.js";
import { getRefreshToken } from "./refresh-token.js";
import { mustGetEnv, SPOTIFY_CLIENT_ID } from "../env.js";

// the plan is this:
// 1. a constant spotify client declared in bot.ts
// 2. on startup the bot will set a ballot channel
// 3. on every api call the spotify client will ensure access token, which will ensure refresh token.
export class SpotifyClient {
  private accessToken: string;

  constructor() {
    this.accessToken = "";
  }

  // channel is used to alert the user to log in to spotify when the refresh token expires
  // todo: write that nicer
  public async kickOffTokenRefresh(channel: TextChannel) {
    // set initial access token
    let refreshToken = await getRefreshToken(channel);
    this.accessToken = await refreshAccessToken(refreshToken);

    // kick off timely refreshing of access token
    // the access token expires once an hour -
    // it is refreshed every 50 minutes as an extra safe buffer
    setInterval(
      async () => {
        refreshToken = await getRefreshToken(channel);
        this.accessToken = await refreshAccessToken(refreshToken);
      },
      1000 * 60 * 50,
    );
  }

  // TODO: this is just here so access token isn't unused.
  // delete this eventually
  public printAccessToken() {
    console.log(`access token is: [${this.accessToken}]`);
  }
}

// get a fresh access token...
async function refreshAccessToken(refreshToken: string): Promise<string> {
  const result = await fetch("https://accounts.spotify.com/api/token", {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: new URLSearchParams({
      grant_type: "refresh_token",
      refresh_token: refreshToken,
      client_id: mustGetEnv(SPOTIFY_CLIENT_ID),
    }),
  });
  const response = await result.json();

  if (!result.ok) {
    throw new Error(`Token refresh failed: ${response.error}`);
  }

  return response.access_token;
}
