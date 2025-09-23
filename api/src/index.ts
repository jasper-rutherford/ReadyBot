// index.ts
import express, { Request } from 'express';
import { Pool } from 'pg';

// TODO(jruth): token auth or something

// this is the server
const app = express();

// this is the postgres client
const pool = new Pool({
  host: process.env.DB_HOST,
  port: Number(process.env.DB_PORT),
  user: process.env.BOT_POSTGRES_USER,
  password: process.env.BOT_POSTGRES_PASSWORD,
  database: process.env.POSTGRES_DB,
});

// TODO(jruth): make linter require types?
// TODO(jruth): check if .husky in the root folder is used/needed
app.get('/hello', (req, res) => {
  res.send('Hello world from inside a Docker container!');
});

// TODO(jruth): log a score

// TODO(jruth): get score for a song

/*
  OK so this is a GET request with three query parameters:
  uri
  themoji
  interval
*/

interface GetScoreRequestParams {
  uri: string;
  themoji: string;
  interval: string;
}

interface getScoreResponse {
  totalScore: number;
  intervalScore: number;
}

app.get(
  '/get-score',
  async (
    req: Request<unknown, unknown, unknown, GetScoreRequestParams>,
    res
  ) => {
    // the query to get the scores
    const query = `SELECT
    SUM(score) AS total_score,
    SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - ($1::interval) THEN score ELSE 0 END) AS interval_score
    FROM scores
    WHERE spotify_uri = $2
    AND themoji = $3;`;

    // query the db
    const result = await pool.query(query, [
      req.query.interval,
      req.query.uri,
      req.query.themoji,
    ]);

    // construct response
    const response: getScoreResponse = {
      totalScore: result.rows[0].total_score || 0,
      intervalScore: result.rows[0].interval_score || 0,
    };

    // send response
    res.json(response);
  }
);

// TODO(jruth): ordered uris

const PORT = process.env.API_PORT || 3000;
app.listen(PORT, () => {
  console.log(`API server listening on port ${PORT}`);
});
