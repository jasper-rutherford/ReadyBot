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
} from "./env.js";

export function detectBallots(
  reaction: MessageReaction | PartialMessageReaction,
  user: User | PartialUser,
): string | undefined {
  // check if user is shitbot
  if (user.id !== mustGetEnv(SHITBOT_USER_ID)) {
    return;
  }

  let ballotType = "";

  // check if emoji is ballot1 or ballot2
  if (reaction.emoji.name === mustGetEnv(UTILITY_BALLOT_EMOJI)) {
    ballotType = "utility";
  } else if (reaction.emoji.name === mustGetEnv(VOTE_BALLOT_EMOJI)) {
    ballotType = "vote";
  } else {
    return;
  }
}
