import { Client, GatewayIntentBits, TextChannel } from "discord.js";
import {
  handleCommand,
  registerCommands,
} from "./command-logic/handle-commands.js";
import { BOT_TOKEN, mustGetEnv } from "./env.js";

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
  let testChannel = "1399872069168009369"; // leaving this hardcoded for now,,, will fix as we leave poc stage
  let channel = client.channels.cache.get(testChannel) as TextChannel;
  channel.send("ready!");
});

// Handle commands
client.on("interactionCreate", async (interaction) => {
  if (!interaction.isChatInputCommand()) return;
  await handleCommand(interaction);
});

client.login(mustGetEnv(BOT_TOKEN));
