// index.ts
import express, { Request, Response } from 'express';
import { Pool } from 'pg';

// TODO(jruth): token auth or something?

// doing an express server
const server = express();

// this is the postgres client
// TODO(jruth): close this somewhere...
const pool = new Pool({
  host: process.env.DB_HOST,
  port: Number(process.env.DB_PORT),
  user: process.env.API_POSTGRES_USER,
  password: process.env.API_POSTGRES_PASSWORD,
  database: process.env.POSTGRES_DB,
});

// TODO(jruth): make linter require types?
// TODO(jruth): check if .husky in the root folder is used/needed
server.get('/hello', (req, res) => {
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
  //TODO(jruth): put these in a separate file?
  uri: string;
  themoji: string;
  interval: string;
}

interface getScoreResponse {
  totalScore: number;
  intervalScore: number;
}

server.get(
  '/scores',
  async (
    req: Request<unknown, unknown, unknown, GetScoreRequestParams>,
    res: Response
  ) => {
    // validate query params
    if (!req.query.uri || !req.query.themoji) {
      res.status(400).json({ error: 'Missing query parameters' });
      return;
    }

    // interval is optional, default to 618 years
    var interval = req.query.interval;
    if (!req.query.interval) {
      interval = '618 years';
    }

    // validate interval format (simple check)
    // const intervalRegex =
    //   /^\d+\s+(seconds|minutes|hours|days|weeks|months|years)$/;
    // if (!intervalRegex.test(req.query.interval)) {
    //   res.status(400).json({ error: 'Invalid interval format' });
    //   return;
    // }

    // the query to get the scores
    const query = `SELECT
    SUM(score) AS total_score,
    SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - ($1::interval) THEN score ELSE 0 END) AS interval_score
    FROM scores
    WHERE spotify_uri = $2
    AND themoji = $3;`;

    console.log('Test:\n', 'Test');
    console.log('Running query:\n', query);

    console.log('With parameters:\n', req.query);

    console.log('With interval:\n', interval);

    let result;
    try {
      // query the db
      result = await pool.query(query, [
        interval,
        req.query.uri,
        req.query.themoji,
      ]);
    } catch (e) {
      console.error('Database query error:', e);
      res.status(500).json({ error: 'Internal server error' });
      return;
    }

    console.log('Query result:\n', result.rows);

    // if no rows, return 404
    if (result.rows.length === 0) {
      res.status(404).json({ error: 'Not found' });
      return;
    }

    // otherwise, construct response
    const response: getScoreResponse = {
      totalScore: result.rows[0].total_score || 0,
      intervalScore: result.rows[0].interval_score || 0,
    };

    // send response
    res.json(response);
  }
);

// TODO(jruth): ordered uris

export { server };
