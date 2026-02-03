import { createApiClient } from "@readybot/api-client";

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
import { BallotType } from "@readybot/api-contracts";

export async function detectBallots(
  reaction: MessageReaction | PartialMessageReaction,
  user: User | PartialUser,
): Promise<void> {
  // check if user is shitbot
  if (user.id !== mustGetEnv(SHITBOT_USER_ID)) {
    return;
  }

  // check if emoji is ballot1 or ballot2
  let ballotType: BallotType;
  if (reaction.emoji.name === mustGetEnv(UTILITY_BALLOT_EMOJI)) {
    ballotType = "utility";
  } else if (reaction.emoji.name === mustGetEnv(VOTE_BALLOT_EMOJI)) {
    ballotType = "vote";
  } else {
    return;
  }

  // if we get here, we have a reaction indicating a ballot, so we post it to the API
  await createApiClient().postBallot(ballotType, reaction.message.id);
}
