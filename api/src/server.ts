import express, { Request, Response } from 'express';
import { Pool } from 'pg';
import {
  GetScoresRequestQueryParams,
  GetScoresResponse,
  PostScoresRequestBody,
} from './models/models';

// TODO(jruth): add types to the returned stuff
export function createServer() {
  const server = express();
  server.use(express.json());

  // this is the postgres client
  const pool = new Pool({
    host: process.env.DB_HOST,
    port: Number(process.env.DB_PORT),
    user: process.env.API_POSTGRES_USER,
    password: process.env.API_POSTGRES_PASSWORD,
    database: process.env.POSTGRES_DB,
  });

  server.get('/hello', (req, res) => {
    res.send('Hello world from inside a Docker container!');
  });

  /*
    GET /scores has three query parameters (defined in GetScoreRequestQueryParams):
      uri:      Spotify song URI
      themoji:  Emoji representation
      interval: Gonna add up all scores in this interval

    Response is of type GetScoreResponse:
    {
      totalScore: number;
      intervalScore: number;
    }

    Expected Behavior:
      - If there are no scores for the given uri/themoji pair, return 0 for both scores.
      - If interval is not provided, default to a very large interval (618 years) to include all scores.
      - Return 400 Bad Request if required query parameters are missing.
      - Return 500 Internal Server Error for any database errors.

    Currently unused. Created as part of the api POC. 
    Probably used later - especially for song stats/charts in a frontend
  */
  server.get(
    '/scores',
    async (
      req: Request<
        unknown,
        GetScoresResponse,
        unknown,
        GetScoresRequestQueryParams
      >,
      res: Response
    ) => {
      // validate query params
      if (!req.query.uri || !req.query.themoji) {
        res.status(400).json({
          error: `Missing query parameters - uri: ${req.query.uri}, themoji: ${req.query.themoji}`,
        });
        return;
      }

      // interval is optional, default to 618 years
      var interval = req.query.interval;
      if (!req.query.interval) {
        interval = '618 years';
      }

      // the query to get the scores
      const query = `SELECT
      SUM(score) AS total_score,
      SUM(CASE WHEN stamp >= CURRENT_TIMESTAMP - ($1::interval) THEN score ELSE 0 END) AS interval_score
      FROM scores
      WHERE spotify_uri = $2
      AND themoji = $3;`;

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

      // otherwise, construct response
      const response: GetScoresResponse = {
        totalScore: Number(result.rows[0].total_score),
        intervalScore: Number(result.rows[0].interval_score),
      };

      // send response
      res.json(response);
    }
  );

  /*
    POST /scores
    
    request body has: spotify_uri, score, song_name, themoji
    all required
    
    score cant be zero. positive or negative integers only
    do good unit testing for disallowing "", null, undefined, 0, non integers, etc. for names and uris and everything. 
    go back to get scores tests and do the same there too 
    TODO(jruth) improve this comment 
  */
  server.post(
    '/scores',
    async (
      req: Request<unknown, unknown, PostScoresRequestBody, unknown>,
      res: Response
    ) => {
      // validate body params
      // spotify_uri, song_name, themoji must be non empty strings
      // score must be non zero integer
      if (
        !(
          typeof req.body.spotify_uri === 'string' &&
          req.body.spotify_uri !== ''
        ) ||
        !(
          typeof req.body.song_name === 'string' && req.body.song_name !== ''
        ) ||
        !(typeof req.body.themoji === 'string' && req.body.themoji !== '') ||
        !(Number.isInteger(req.body.score) && req.body.score !== 0)
      ) {
        res.status(400).json({
          error: `Missing body parameters - spotify_uri: ${req.body.spotify_uri}, score: ${req.body.score}, song_name: ${req.body.song_name}, themoji: ${req.body.themoji}`,
        });
        return;
      }

      // the query to get the scores
      const query = `INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) 
      VALUES ($1, $2, $3, NOW(), $4);`;

      try {
        // query the db
        await pool.query(query, [
          req.body.spotify_uri,
          req.body.score,
          req.body.song_name,
          req.body.themoji,
        ]);
      } catch (e) {
        console.error('Database query error:', e);
        res.status(500).json({ error: 'Internal server error' });
        return;
      }

      // great work, 201
      res.sendStatus(201);
    }
  );

  // function to close the server and the db pool
  const close = async () => {
    await pool.end();
  };

  return { server, close };
}
