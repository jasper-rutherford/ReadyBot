export interface GetScoresRequestQueryParams {
  uri: string; // Spotify song URI
  themoji: string; // Emoji representation
  interval: string; // Gonna add up all scores in this interval
}

export interface GetScoresResponse {
  songName: string; // Name of the song
  totalScore: number; // Total score for the given URI and themoji across all time
  intervalScore: number; // Total score for the given URI and themoji within the specified interval
}

export interface PostScoresRequestBody {
  spotify_uri: string; // Spotify song URI
  score: number; // Score for the given URI and themoji
  song_name: string; // Name of the song
  themoji: string; // Emoji representation
}
