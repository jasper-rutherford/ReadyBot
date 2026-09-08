import { TextChannel, Client } from "discord.js";
import { getRefreshToken, refreshAccessToken } from "./refresh-tokens.js";

// the plan is this:
// 1. a constant spotify client declared in bot.ts
// 2. on startup the bot will set a ballot channel
// 3. on every api call the spotify client will ensure access token, which will ensure refresh token.
export class SpotifyClient {
  private accessToken: string;

  constructor() {
    this.accessToken = "";
  }

  // this function starts a background process which will always keep the access token refreshed and goodly
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
