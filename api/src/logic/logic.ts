import { Pool } from 'pg';

// TODO(jruth): something cleverer than passing pool in every request. possibly some pool wrapper thing?
// TOOD(jruth): would maybe like to have a type defined somewhere for the return value. idk.
export async function getScores(
  pool: Pool,
  uri: string,
  themoji: string,
  interval: string
): Promise<{ songName: string; totalScore: number; intervalScore: number }> {
  // the query to get the scores
  // we do MIN(song_name) because all records with the same uri should have the same song name,
  // so any name from any record that matches the uri should be fine. min is just a way to get one of those names.
  const query = `SELECT
    MIN(song_name) AS song_name,
    SUM(score) AS total_score,
    SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - ($1::interval) THEN score ELSE 0 END) AS interval_score
    FROM scores
    WHERE spotify_uri = $2
    AND themoji = $3;`;

  let result;
  try {
    // query the db
    result = await pool.query(query, [interval, uri, themoji]);
  } catch (e) {
    // TODO(jruth) really we should have clever error wrapping or something here
    console.error('Database query error:', e);
    throw new Error('Database query error');
  }

  // otherwise, construct response
  return {
    songName: result.rows[0].song_name,
    totalScore: Number(result.rows[0].total_score),
    intervalScore: Number(result.rows[0].interval_score),
  };
}
