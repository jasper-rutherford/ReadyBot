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
  await pool.query(`DELETE FROM scores WHERE themoji = $1;`, [testThemoji]);
  await pool.query(`DELETE FROM scores WHERE themoji = $1;`, [testThemoji2]);
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
  let testUri = 'getscorestesturi';

  // try to get a score from the db when theres no pair
  it('returns 0 when there is no pair', async () => {
    const res = await request(server).get(
      `/scores?uri=${testUri}&themoji=${testThemoji}`
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
        VALUES ($1, 1, 'Test Song', NOW(), $2)`,
      [testUri, testThemoji]
    );

    // request the score
    const res = await request(server).get(
      `/scores?uri=${testUri}&themoji=${testThemoji}&interval=5 seconds`
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
      `/scores?uri=${testUri}&themoji=${testThemoji}&interval=1 second`
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
        VALUES ($1, 1, 'Test Song', NOW(), $2)`,
      [testUri, testThemoji]
    );

    // request the score with 5 second interval
    const res = await request(server).get(
      `/scores?uri=${testUri}&themoji=${testThemoji}&interval=5 seconds`
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
      `/scores?uri=${testUri}&themoji=${testThemoji}&interval=1 seconds`
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
      `/scores?uri=${testUri}&themoji=${testThemoji}&interval=1 millisecond`
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
      `/scores?uri=${testUri}&themoji=${testThemoji}`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: 2,
      intervalScore: 2,
    });
  });

  // TODO(jruth) check treats different uris separately too
  it('treats different themojis separately', async () => {
    // request the score for a different themoji
    const res = await request(server).get(
      `/scores?uri=${testUri}&themoji=${testThemoji2}`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: 0,
      intervalScore: 0,
    });

    // add a score with the different themoji
    await pool.query(
      `INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) 
        VALUES ($1, 1, 'Test Song', NOW(), $2)`,
      [testUri, testThemoji2]
    );

    // request the score again
    const res2 = await request(server).get(
      `/scores?uri=${testUri}&themoji=${testThemoji2}`
    );
    expect(res2.status).toBe(200);
    expect(res2.body).toEqual({
      totalScore: 1,
      intervalScore: 1,
    });
  });

  it('fails when interval is invalid', async () => {
    const res = await request(server).get(
      `/scores?uri=${testUri}&themoji=${testThemoji}&interval=invalidinterval`
    );
    expect(res.status).toBe(500);
  });

  it('fails when required params are missing', async () => {
    const res = await request(server).get(`/scores?themoji=${testThemoji}`);
    expect(res.status).toBe(400);

    const res2 = await request(server).get(`/scores?uri=${testUri}`);
    expect(res2.status).toBe(400);
  });
});

// test POST scores
describe('POST /scores', () => {
  let testUri = 'postscorestesturi';

  it('gets things into the db correctly', async () => {
    // post a score
    const res = await request(server).post('/scores').send({
      spotify_uri: testUri,
      score: 1,
      song_name: 'Test Song',
      themoji: testThemoji,
    });
    expect(res.status).toBe(201);

    // check that the record exists in the db
    const queryResult = await pool.query(
      `SELECT * FROM scores WHERE spotify_uri=$1 AND themoji=$2;`,
      [testUri, testThemoji]
    );
    expect(queryResult.rowCount).toBe(1);
    expect(queryResult.rows[0].score).toBe(1);
    expect(queryResult.rows[0].song_name).toBe('Test Song');
    expect(queryResult.rows[0].spotify_uri).toBe(testUri);
    expect(queryResult.rows[0].themoji).toBe(testThemoji);
    expect(queryResult.rows[0].stamp).toBeDefined();

    // check that the stamp is within the last second
    const res2 = await request(server).get(
      `/scores?uri=${testUri}&themoji=${testThemoji}&interval=1 seconds`
    );
    expect(res2.status).toBe(200);
    expect(res2.body.totalScore).toBe(1);

    // add another score with negative value
    const res3 = await request(server).post('/scores').send({
      spotify_uri: testUri,
      score: -1,
      song_name: 'Test Song',
      themoji: testThemoji,
    });
    expect(res3.status).toBe(201);

    // check that both records exist in the db
    const queryResult2 = await pool.query(
      `SELECT * FROM scores WHERE spotify_uri=$1 AND themoji=$2;`,
      [testUri, testThemoji]
    );
    expect(queryResult2.rowCount).toBe(2);

    // check that the total score is now 0
    const res4 = await request(server).get(
      `/scores?uri=${testUri}&themoji=${testThemoji}`
    );
    expect(res4.status).toBe(200);
    expect(res4.body.totalScore).toBe(0);
  });

  describe('missing/bad body params 400', () => {
    it('fails when spotify_uri is bad', async () => {
      // missing spotify_uri
      const res1 = await request(server).post('/scores').send({
        // spotify_uri missing
        score: 1,
        song_name: 'Test Song',
        themoji: testThemoji,
      });
      expect(res1.status).toBe(400);

      // empty spotify_uri
      const res2 = await request(server).post('/scores').send({
        spotify_uri: '',
        score: 1,
        song_name: 'Test Song',
        themoji: testThemoji,
      });
      expect(res2.status).toBe(400);

      // spotify_uri must be a string
      const res3 = await request(server).post('/scores').send({
        spotify_uri: 12345,
        score: 1,
        song_name: 'Test Song',
        themoji: testThemoji,
      });
      expect(res3.status).toBe(400);
    });

    it('fails when score is bad', async () => {
      // missing score
      const res1 = await request(server).post('/scores').send({
        spotify_uri: testUri,
        // score missing
        song_name: 'Test Song',
        themoji: testThemoji,
      });
      expect(res1.status).toBe(400);

      // score must be number (not string)
      const res2 = await request(server).post('/scores').send({
        spotify_uri: testUri,
        score: '1',
        song_name: 'Test Song',
        themoji: testThemoji,
      });
      expect(res2.status).toBe(400);

      // score must be non zero
      const res3 = await request(server).post('/scores').send({
        spotify_uri: testUri,
        score: 0,
        song_name: 'Test Song',
        themoji: testThemoji,
      });
      expect(res3.status).toBe(400);

      // and then this should definitely fail
      const res4 = await request(server).post('/scores').send({
        spotify_uri: testUri,
        score: 'badscore',
        song_name: 'Test Song',
        themoji: testThemoji,
      });
      expect(res4.status).toBe(400);
    });

    it('fails when song_name is bad', async () => {
      // missing song_name
      const res1 = await request(server).post('/scores').send({
        spotify_uri: testUri,
        score: 1,
        // song_name missing
        themoji: testThemoji,
      });
      expect(res1.status).toBe(400);

      // empty song_name
      const res2 = await request(server).post('/scores').send({
        spotify_uri: testUri,
        score: 1,
        song_name: '',
        themoji: testThemoji,
      });
      expect(res2.status).toBe(400);

      // song_name must be a string
      const res3 = await request(server).post('/scores').send({
        spotify_uri: testUri,
        score: 1,
        song_name: 12345,
        themoji: testThemoji,
      });
      expect(res3.status).toBe(400);
    });

    it('fails when themoji is bad', async () => {
      // missing themoji
      const res1 = await request(server).post('/scores').send({
        spotify_uri: testUri,
        score: 1,
        song_name: 'Test Song',
        // themoji missing
      });
      expect(res1.status).toBe(400);

      // empty themoji
      const res2 = await request(server).post('/scores').send({
        spotify_uri: testUri,
        score: 1,
        song_name: 'Test Song',
        themoji: '',
      });
      expect(res2.status).toBe(400);

      // themoji must be a string
      const res3 = await request(server).post('/scores').send({
        spotify_uri: testUri,
        score: 1,
        song_name: 'Test Song',
        themoji: 12345,
      });
      expect(res3.status).toBe(400);
    });
  });
});
