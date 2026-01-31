import { ChatInputCommandInteraction } from "discord.js";
import { Command } from "../command-types.js";

// A simple ping command to test if the bot is responsive
export const ping: Command = {
  name: "ping",
  desc: "Ping the bot!",
  execute: async function (interaction: ChatInputCommandInteraction) {
    interaction.reply("Pong!");
  },
};
