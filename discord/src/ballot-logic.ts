// TODO(jruth): think clever structure/precedent for how we organize files/subfolders. "logic" folder, perhaps? dunnor.

import {
  MessageReaction,
  PartialMessageReaction,
  PartialUser,
  User,
} from "discord.js";
import {
  mustGetEnv,
  SHITBOT_USER_ID,
  UTILITY_BALLOT_EMOJI,
  VOTE_BALLOT_EMOJI,
} from "./env";

export function detectBallots(
  reaction: MessageReaction | PartialMessageReaction,
  user: User | PartialUser,
): string | undefined {
  // check if user is shitbot
  if (user.id !== mustGetEnv(SHITBOT_USER_ID)) {
    return;
  }

  // check if emoji is ballot1 or ballot2
  if (reaction.emoji.name === mustGetEnv(UTILITY_BALLOT_EMOJI)) {
    return "utility";
  } else if (reaction.emoji.name === mustGetEnv(VOTE_BALLOT_EMOJI)) {
    return "vote";
  }

  return;
}
