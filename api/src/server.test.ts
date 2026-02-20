import request from 'supertest';
import { createServer } from './server';
import { Pool } from 'pg';
import Express from 'express';

// all tests will use this emoji as the themoji
const testThemoji = '🧪';
const testThemoji2 = '✂';

let pool: Pool;
let server: Express.Application;
let close: () => Promise<void>;

beforeAll(async () => {
  // postgres client used for direct db manipulation in tests
  pool = new Pool({
    host: process.env.DB_HOST,
    port: Number(process.env.DB_PORT),
    user: process.env.POSTGRES_USER,
    password: process.env.POSTGRES_PASSWORD,
    database: process.env.POSTGRES_DB,
  });

  // the server used for testing
  ({ server, close } = createServer());

  // wipe scores for the test themoji
  await pool.query(`DELETE FROM scores WHERE themoji = '${testThemoji}';`);
  await pool.query(`DELETE FROM scores WHERE themoji = '${testThemoji2}';`);
});

afterAll(async () => {
  await pool.end();
  await close();
});

describe('GET /hello', () => {
  it('returns 200 OK', async () => {
    const res = await request(server).get('/hello');
    expect(res.status).toBe(200);
  });
});

// test get scores
describe('GET /scores', () => {
  // try to get a score from the db when theres no pair
  it('returns 0 when there is no pair', async () => {
    const res = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji}`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: 0,
      intervalScore: 0,
    });
  });

  // check that the score is there
  it('returns properly when accessing a score that is there and in interval', async () => {
    // add a score to the scores table
    await pool.query(
      `INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) 
        VALUES ('testuri', 1, 'Test Song', NOW(), '${testThemoji}')`
    );

    // request the score
    const res = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji}&interval=5+seconds`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: 1,
      intervalScore: 1,
    });
  });

  it('returns 0 for interval score when outside interval', async () => {
    // sleep 2 seconds to ensure timestamp is outside interval
    await new Promise((resolve) => setTimeout(resolve, 2000));

    // request with 1 second interval
    const res = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji}&interval=1 second`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: 1,
      intervalScore: 0,
    });
  });

  it('calculates totals correctly with multiple records, inside interval', async () => {
    // add another score to the scores table
    await pool.query(
      `INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) 
        VALUES ('testuri', 1, 'Test Song', NOW(), '${testThemoji}')`
    );

    // request the score with 5 second interval
    const res = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji}&interval=5 seconds`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: 2,
      intervalScore: 2,
    });
  });

  it('calculates totals correctly with multiple records, some inside and some outside interval', async () => {
    // request the scores with 1 second interval
    const res = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji}&interval=1 seconds`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: 2,
      intervalScore: 1,
    });
  });

  it('calculates totals correctly with multiple records, all outside interval', async () => {
    // request the scores with 1 second interval
    const res = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji}&interval=1 millisecond`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: 2,
      intervalScore: 0,
    });
  });

  it('calculates totals correctly with multiple records, no interval', async () => {
    // request the scores with 1 second interval
    const res = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji}`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: 2,
      intervalScore: 2,
    });
  });

  it('treats different themojis separately', async () => {
    // request the score for a different themoji
    const res = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji2}`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: 0,
      intervalScore: 0,
    });

    // add a score with the different themoji
    await pool.query(
      `INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) 
        VALUES ('testuri', 1, 'Test Song', NOW(), '${testThemoji2}')`
    );

    // request the score again
    const res2 = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji2}`
    );
    expect(res2.status).toBe(200);
    expect(res2.body).toEqual({
      totalScore: 1,
      intervalScore: 1,
    });
  });

  it('fails when interval is invalid', async () => {
    const res = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji}&interval=invalidinterval`
    );
    expect(res.status).toBe(500);
  });

  it('fails when required params are missing', async () => {
    const res = await request(server).get(`/scores?themoji=${testThemoji}`);
    expect(res.status).toBe(400);

    const res2 = await request(server).get(`/scores?uri=testuri`);
    expect(res2.status).toBe(400);
  });
});

// test post ballots
describe('POST /ballots', () => {
  let tests = [
    {
      name: 'none supplied',
      body: {},
      expectedStatus: 400,
      errorResponse: {
        error: 'Missing body parameters',
        missing: ['ballotType', 'messageID'],
      },
    },
    {
      name: 'only ballotType supplied',
      body: { ballotType: 'utility' },
      expectedStatus: 400,
      errorResponse: {
        error: 'Missing body parameters',
        missing: ['messageID'],
      },
    },
    {
      name: 'only messageID supplied',
      body: { messageID: '12345' },
      expectedStatus: 400,
      errorResponse: {
        error: 'Missing body parameters',
        missing: ['ballotType'],
      },
    },
    {
      name: 'invalid ballotType and invalid messageID',
      body: { ballotType: 'invalid', messageID: '' },
      expectedStatus: 400,
      errorResponse: {
        error: 'Invalid body parameters',
        errors: [
          "Invalid ballotType: 'invalid' (must be 'utility' or 'vote')",
          "Invalid messageID: '' (must be a non-empty string)",
        ],
      },
    },
    {
      name: 'invalid ballotType, valid messageID',
      body: { ballotType: 'invalid', messageID: '12345' },
      expectedStatus: 400,
      errorResponse: {
        error: 'Invalid body parameters',
        errors: ["Invalid ballotType: 'invalid' (must be 'utility' or 'vote')"],
      },
    },
    {
      name: 'valid ballotType, invalid messageID',
      body: { ballotType: 'utility', messageID: '' },
      expectedStatus: 400,
      errorResponse: {
        error: 'Invalid body parameters',
        errors: ["Invalid messageID: '' (must be a non-empty string)"],
      },
    },
    {
      name: 'valid ballotType and messageID, utility',
      body: { ballotType: 'utility', messageID: 'utilitymessage1' },
      expectedStatus: 204,
      // check the db to make sure the message ID was set correctly
      after: async () => {
        const res = await pool.query(
          `SELECT message_id FROM ballot_messages WHERE ballot_type = 'utility';`
        );
        expect(res.rows.length).toBe(1);
        expect(res.rows[0].message_id).toBe('utilitymessage1');
      },
    },
    {
      name: 'valid ballotType and messageID, vote',
      body: { ballotType: 'vote', messageID: 'votemessage1' },
      expectedStatus: 204,
      // check the db to make sure the message ID was set correctly
      after: async () => {
        const res = await pool.query(
          `SELECT message_id FROM ballot_messages WHERE ballot_type = 'vote';`
        );
        expect(res.rows.length).toBe(1);
        expect(res.rows[0].message_id).toBe('votemessage1');
      },
    },
    {
      name: 'confirm duplicate utility inserts do not error',
      body: { ballotType: 'utility', messageID: 'utilitymessage1' },
      expectedStatus: 204,
      // check the db to make sure the value is still correct
      after: async () => {
        const res = await pool.query(
          `SELECT message_id FROM ballot_messages WHERE ballot_type = 'utility';`
        );
        expect(res.rows.length).toBe(1);
        expect(res.rows[0].message_id).toBe('utilitymessage1');
      },
    },
    {
      name: 'confirm duplicate vote inserts do not error',
      body: { ballotType: 'vote', messageID: 'votemessage1' },
      expectedStatus: 204,
      // check the db to make sure the value is still correct
      after: async () => {
        const res = await pool.query(
          `SELECT message_id FROM ballot_messages WHERE ballot_type = 'vote';`
        );
        expect(res.rows.length).toBe(1);
        expect(res.rows[0].message_id).toBe('votemessage1');
      },
    },
    {
      name: 'confirm sequential utility inserts overwrite previous values',
      body: { ballotType: 'utility', messageID: 'utilitymessage2' },
      expectedStatus: 204,
      // check the db to make sure the value is updated correctly
      after: async () => {
        const res = await pool.query(
          `SELECT message_id FROM ballot_messages WHERE ballot_type = 'utility';`
        );
        expect(res.rows.length).toBe(1);
        expect(res.rows[0].message_id).toBe('utilitymessage2');
      },
    },
    {
      name: 'confirm sequential vote inserts overwrite previous values',
      body: { ballotType: 'vote', messageID: 'votemessage2' },
      expectedStatus: 204,
      // check the db to make sure the value is updated correctly
      after: async () => {
        const res = await pool.query(
          `SELECT message_id FROM ballot_messages WHERE ballot_type = 'vote';`
        );
        expect(res.rows.length).toBe(1);
        expect(res.rows[0].message_id).toBe('votemessage2');
      },
    },
  ];

  tests.forEach((test) => {
    it(test.name, async () => {
      const res = await request(server).post('/ballots').send(test.body);
      expect(res.status).toBe(test.expectedStatus);
      if (test.errorResponse) {
        expect(res.body).toEqual(test.errorResponse);
      }
      if (test.after) {
        await test.after();
      }
    });
  });
});
