import dotenv from "dotenv";
dotenv.config();

// environment variable names
export const BOT_TOKEN = "BOT_TOKEN";
export const BOT_CLIENT_ID = "BOT_CLIENT_ID";
export const GUILD_ID = "GUILD_ID";
export const BALLOT_CHANNEL_ID = "BALLOT_CHANNEL_ID";
export const UTILITY_BALLOT_EMOJI = "UTILITY_BALLOT_EMOJI";
export const VOTE_BALLOT_EMOJI = "VOTE_BALLOT_EMOJI";
export const SHITBOT_USER_ID = "SHITBOT_USER_ID";
export const SPOTIFY_CLIENT_ID = "SPOTIFY_CLIENT_ID";
export const SPOTIFY_CLIENT_SECRET = "SPOTIFY_CLIENT_SECRET";
export const SPOTIFY_LOGIN_BASE_URL = "SPOTIFY_LOGIN_BASE_URL";

// retrieves an environment variable or throws an error if it is not set
export function mustGetEnv(env: string): string {
  let variable = process.env[env];
  if (variable === undefined) {
    throw new Error(`${env} not set...`);
  }

  return variable;
}
