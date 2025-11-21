import request from 'supertest';
import { createServer } from './server';
import { Pool } from 'pg';
import Express from 'express';
import { format } from 'date-fns';

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
        VALUES ('testuri', 1, 'Test Song', '${format(new Date(), 'yyyy-MM-dd HH:mm:ss.SSS')}', '${testThemoji}')`
    );

    // request the score
    const res = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji}&interval=5+seconds`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: '1',
      intervalScore: '1',
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
      totalScore: '1',
      intervalScore: '0',
    });
  });

  it('calculates totals correctly with multiple records, inside interval', async () => {
    // add another score to the scores table
    await pool.query(
      `INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) 
        VALUES ('testuri', 1, 'Test Song', '${format(new Date(), 'yyyy-MM-dd HH:mm:ss.SSS')}', '${testThemoji}')`
    );

    // request the score with 5 second interval
    const res = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji}&interval=5 seconds`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: '2',
      intervalScore: '2',
    });
  });

  it('calculates totals correctly with multiple records, some inside and some outside interval', async () => {
    // request the scores with 1 second interval
    const res = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji}&interval=1 seconds`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: '2',
      intervalScore: '1',
    });
  });

  it('calculates totals correctly with multiple records, all outside interval', async () => {
    // request the scores with 1 second interval
    const res = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji}&interval=1 millisecond`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: '2',
      intervalScore: '0',
    });
  });

  it('calculates totals correctly with multiple records, no interval', async () => {
    // request the scores with 1 second interval
    const res = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji}`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: '2',
      intervalScore: '0',
    });
  });

  // it('fails when interval is invalid', async () => {
  //   const res = await request(server).get(`/scores?uri=testuri&themoji=${testThemoji}&interval=invalidinterval`);
  //   expect(res.status).toBe(400);
  // });

  it('treats different themojis separately', async () => {
    // request the score for a different themoji
    const res = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji2}`
    );
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: '0',
      intervalScore: '0',
    });

    // add a score with the different themoji
    await pool.query(
      `INSERT INTO scores (spotify_uri, score, song_name, stamp, themoji) 
        VALUES ('testuri', 1, 'Test Song', '${format(new Date(), 'yyyy-MM-dd HH:mm:ss.SSS')}', '${testThemoji2}')`
    );

    // request the score again
    const res2 = await request(server).get(
      `/scores?uri=testuri&themoji=${testThemoji2}`
    );
    expect(res2.status).toBe(200);
    expect(res2.body).toEqual({
      totalScore: '1',
      intervalScore: '1',
    });
  });
});

// test bad input -> 400
// test invalid input -> 400

// i think
