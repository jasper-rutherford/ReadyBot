import dotenv from "dotenv";
import {
  Client,
  GatewayIntentBits,
  REST,
  Routes,
  SlashCommandBuilder,
  TextChannel,
} from "discord.js";

// env shenanigans
dotenv.config();
const token = process.env.BOT_TOKEN || "bruh";

// make the client
const client = new Client({
  intents: [
    GatewayIntentBits.Guilds, // see basic information about discord servers
    GatewayIntentBits.GuildMessages,
    GatewayIntentBits.MessageContent,
  ],
});

// register the commands
// TODO(jruth): put these setup somewhere else (they will grow)
async function registerCommands() {
  const rest = new REST({ version: "10" }).setToken(token);

  const pingCommand = new SlashCommandBuilder()
    .setName("ping")
    .setDescription("Replies with Pong!");

  await rest.put(
    Routes.applicationGuildCommands(
      "1457214627875393669",
      "254631721620733952",
    ),
    { body: [pingCommand.toJSON()] },
  );

  console.log("Slash commands registered");
}

// tell it what to do when its up and ready
client.once("clientReady", async () => {
  // register the commands
  await registerCommands();

  // just send a poc message for now
  let testChannel = "1399872069168009369";
  let channel = client.channels.cache.get(testChannel) as TextChannel;
  channel.send("ready!");
});

// Handle the command
client.on("interactionCreate", async (interaction) => {
  if (!interaction.isChatInputCommand()) return;

  if (interaction.commandName === "ping") {
    await interaction.reply("Pong!");
  }
});

client.on("messageCreate", (message) => {
  console.log(message.content);
});

console.log(token === "bruh");
client.login(token);
