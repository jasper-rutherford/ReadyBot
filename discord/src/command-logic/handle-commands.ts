import {
  Command,
  CommandExecution as CommandExecution,
} from "./command-types.js";
import { ping } from "./commands/ping.js";
import {
  ChatInputCommandInteraction,
  REST,
  Routes,
  SlashCommandBuilder,
} from "discord.js";
import { BOT_CLIENT_ID, BOT_TOKEN, GUILD_ID, mustGetEnv } from "../env.js";

// add all commands to this list manually
const commandList: Command[] = [ping];

// generate map based on command list
const commandMap = new Map<string, CommandExecution>(
  commandList.map((c) => [c.name, c.execute]),
);

// register the commands with the discord bot
export async function registerCommands() {
  const rest = new REST({ version: "10" }).setToken(mustGetEnv(BOT_TOKEN));

  // send in the commands
  await rest.put(
    Routes.applicationGuildCommands(
      mustGetEnv(BOT_CLIENT_ID),
      mustGetEnv(GUILD_ID),
    ),
    {
      body: commandList.map((c) =>
        new SlashCommandBuilder()
          .setName(c.name)
          .setDescription(c.desc)
          .toJSON(),
      ),
    },
  );

  // done
  console.log("Slash commands registered");
}

// handle an incoming command
export async function handleCommand(interaction: ChatInputCommandInteraction) {
  let execute = commandMap.get(interaction.commandName);
  if (execute != undefined) {
    await execute(interaction);
  }
}
