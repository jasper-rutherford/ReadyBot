import { ChatInputCommandInteraction } from "discord.js";

// type for the function that gets executed when a command is run
// takes in a ChatInputCommandInteraction and returns a Promise that resolves to void
export type CommandExecution = (
  interaction: ChatInputCommandInteraction,
) => Promise<void>;

// type for a command. Has a name, description, and an execute function
export interface Command {
  name: string; // name of the command
  desc: string; // description of what the command does
  execute: CommandExecution; // the stuff that happens when the command executes
}
