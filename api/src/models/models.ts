export interface GetScoreRequestParams {
  uri: string; // Spotify song URI
  themoji: string; // Emoji representation
  interval: string; // Gonna add up all scores in this interval
}

export interface GetScoreResponse {
  totalScore: number; // Total score for the given URI and themoji across all time
  intervalScore: number; // Total score for the given URI and themoji within the specified interval
}

export interface PostBallotRequestBody {
  ballotType: 'utility' | 'vote'; // Type of ballot being cast
  messageID: number; // Message ID associated with the ballot
}
