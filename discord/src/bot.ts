import {
  Client,
  GatewayIntentBits,
  Interaction,
  TextChannel,
} from "discord.js";
import {
  handleCommand,
  registerCommands,
} from "./command-logic/handle-commands.js";
import { BALLOT_CHANNEL_ID, BOT_TOKEN, mustGetEnv } from "./env.js";
import { detectBallots } from "./ballot-logic.js";
import { getRefreshToken } from "./spotify-logic/refresh-token.js";

// declare a spotify client - once the bot is running it will initialize this
// todo...

// make the discord client
const client = new Client({
  intents: [
    GatewayIntentBits.Guilds, // see basic information about discord servers
    GatewayIntentBits.GuildMessages,
    GatewayIntentBits.GuildMessageReactions,
  ],
});

// tell it what to do when its up and ready
client.once("clientReady", async () => {
  // register all the commands
  await registerCommands();

  // get the channel where ballots are posted
  let channel = client.channels.cache.get(
    mustGetEnv(BALLOT_CHANNEL_ID),
  ) as TextChannel;

  // get a spotify refresh token
  console.log("getting spotify refresh token...");
  let tokenData = await getRefreshToken(channel);

  console.log("spotify refresh token: " + tokenData.token);
  console.log(
    "spotify refresh token expiration timestamp: " +
      tokenData.expirationTimestamp,
  );

  // initialize the spotify client with the refresh token
  // todo...

  // just send a poc message for now
  channel.send("ready!");
});

// Handle commands
client.on("interactionCreate", async (interaction: Interaction) => {
  // only support / commands for now
  if (!interaction.isChatInputCommand()) return;
  await handleCommand(interaction);
});

// Handle reactions
client.on("messageReactionAdd", async (reaction, user) => {
  await detectBallots(reaction, user);
});

// let the games begin
client.login(mustGetEnv(BOT_TOKEN));
