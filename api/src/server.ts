import express, { Request, Response } from 'express';
import { Pool } from 'pg';
import {
  GetScoreRequestParams,
  GetScoreResponse,
  PostBallotRequestBody,
} from './models/models';

// TODO(jruth): add types to the returned stuff
export function createServer() {
  const server = express();
  server.use(express.json());

  // this is the postgres client
  // TODO(jruth): close this somewhere...
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
    GET /scores has three query parameters (defined in GetScoreRequestParams):
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
  */
  server.get(
    '/scores',
    async (
      req: Request<unknown, unknown, unknown, GetScoreRequestParams>,
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
      const response: GetScoreResponse = {
        totalScore: Number(result.rows[0].total_score),
        intervalScore: Number(result.rows[0].interval_score),
      };

      // send response
      res.json(response);
    }
  );

  // post /ballots
  // update the messageID for a particular ballot type (utility or vote) in the db
  // this is gonna be called by the discord bot when it sees that shitbot posted a new ballot message
  server.post(
    '/ballots',
    async (
      req: Request<unknown, unknown, PostBallotRequestBody, unknown>,
      res: Response
    ) => {
      // validate body
      if (!req.body.ballotType || !req.body.messageID) {
        // handle missing parameters
        const missing = [];
        if (!req.body.ballotType) missing.push('ballotType');
        if (!req.body.messageID) missing.push('messageID');

        res.status(400).json({
          error: 'Missing body parameters',
          missing,
        });
        return;
      } else if (
        req.body.ballotType !== 'utility' &&
        req.body.ballotType !== 'vote'
      ) {
        // handle invalid ballot type
        res.status(400).json({
          error: `Invalid ballotType: '${req.body.ballotType}' (must be 'utility' or 'vote')`,
        });
        return;
      }

      // the query to set the message ID for the ballot type
      const query = `UPDATE ballot_messages SET message_id = $1 WHERE ballot_type = $2;`;

      try {
        // query the db
        await pool.query(query, [req.body.messageID, req.body.ballotType]);
      } catch (e) {
        console.error('Database query error:', e);
        res.status(500).json({ error: 'Internal server error' });
        return;
      }

      // send response
      res.sendStatus(204); // no content
    }
  );

  // function to close the server and the db pool
  const close = async () => {
    await pool.end();
  };

  return { server, close };
}
