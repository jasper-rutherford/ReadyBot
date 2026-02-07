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

// make the client
const client = new Client({
  intents: [
    GatewayIntentBits.Guilds, // see basic information about discord servers
    GatewayIntentBits.GuildMessages,
  ],
});

// tell it what to do when its up and ready
client.once("clientReady", async () => {
  // register all the commands
  await registerCommands();

  // just send a poc message for now
  let channel = client.channels.cache.get(
    mustGetEnv(BALLOT_CHANNEL_ID),
  ) as TextChannel;
  channel.send("ready!");
});

// Handle commands
client.on("interactionCreate", async (interaction: Interaction) => {
  if (!interaction.isChatInputCommand()) return;
  await handleCommand(interaction);
});

// Handle reactions
client.on("messageReactionAdd", async (reaction, user) => {
  let ballotType = detectBallots(reaction, user);
  if (ballotType) {
    console.log(`detected ${ballotType} ballot!`);
  } else {
    console.log("detected non-ballot reaction...");
  }
});

client.login(mustGetEnv(BOT_TOKEN));
