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
import { SpotifyClient } from "./spotify-logic/client.js";

// initialize this here - the discord bot will kick off token refresh on startup
const spotifyClient = new SpotifyClient();

// make the discord client
const discordClient = new Client({
  intents: [
    GatewayIntentBits.Guilds, // see basic information about discord servers
    GatewayIntentBits.GuildMessages,
    GatewayIntentBits.GuildMessageReactions,
  ],
});

// tell it what to do when its up and ready
discordClient.once("clientReady", async () => {
  // register all the commands
  await registerCommands();

  // get the channel where ballots are posted
  let channel = discordClient.channels.cache.get(
    mustGetEnv(BALLOT_CHANNEL_ID),
  ) as TextChannel;

  // kick off the spotify client's refresh of tokens
  await spotifyClient.kickOffTokenRefresh(channel);

  // just send a poc message for now
  channel.send("ready!");
});

// Handle commands
discordClient.on("interactionCreate", async (interaction: Interaction) => {
  // only support / commands for now
  if (!interaction.isChatInputCommand()) return;
  await handleCommand(interaction);
});

// Handle reactions
discordClient.on("messageReactionAdd", async (reaction, user) => {
  await detectBallots(reaction, user);
});

// let the games begin
discordClient.login(mustGetEnv(BOT_TOKEN));
