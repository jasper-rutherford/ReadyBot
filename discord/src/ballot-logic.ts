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

export async function detectBallots(
  reaction: MessageReaction | PartialMessageReaction,
  user: User | PartialUser,
): Promise<void> {
  // check if user is shitbot
  if (user.id !== mustGetEnv(SHITBOT_USER_ID)) {
    return;
  }

  // check if emoji is ballot1 or ballot2
  let ballotType: string; // TODO(jruth): type this eventually
  if (reaction.emoji.name === mustGetEnv(UTILITY_BALLOT_EMOJI)) {
    ballotType = "utility";
  } else if (reaction.emoji.name === mustGetEnv(VOTE_BALLOT_EMOJI)) {
    ballotType = "vote";
  } else {
    return;
  }

  // TODO(jruth): this is where we plug in the call to the api to post the ballot to db
  console.log(
    `Detected ${ballotType} ballot with message ID ${reaction.message.id}`,
  );
}
