export type BallotType = "utility" | "vote";

export interface PostBallotRequestBody {
  ballotType: BallotType; // Type of ballot being cast
  messageID: string; // Message ID associated with the ballot
}
