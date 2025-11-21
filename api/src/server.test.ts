import request from 'supertest';
import { createServer } from './server';
// import { Pool } from 'pg';

// this is the postgres client
// const pool = new Pool({
//   host: process.env.DB_HOST,
//   port: Number(process.env.DB_PORT),
//   user: process.env.POSTGRES_USER,
//   password: process.env.POSTGRES_PASSWORD,
//   database: process.env.POSTGRES_DB,
// });

describe('GET /hello', () => {
  it('returns 200 OK', async () => {
    const { server, close } = createServer();

    const res = await request(server).get('/hello');
    expect(res.status).toBe(200);

    await close();
  });
});

// test get scores
describe('GET /scores', () => {
  // try to get a score from the db when theres no pair
  it('returns 0 when there is no pair', async () => {
    const { server, close } = createServer();

    const res = await request(server).get('/scores/?uri=testuri&themoji=🧪');
    expect(res.status).toBe(200);
    expect(res.body).toEqual({
      totalScore: 0,
      intervalScore: 0,
    });

    await close();
  });

  // // make a themoji pair
  // // try to get a score from the db when theres a pair for a song that doesnt exist
  // it('returns empty when there is a pair but no score', async () => {
  //   // Directly insert a themoji pair
  //   await pool.query(
  //     'INSERT INTO themoji_pairs (song_id, themoji) VALUES ($1, $2)',
  //     ['abc123', '🔥']
  //   );

  //   const res = await request(server).get('/scores/abc123');
  //   expect(res.status).toBe(200);
  //   expect(res.body).toEqual([]);
  // });

  // // add a score to the db themoji
  // // check that the score is there
  // it('returns empty when there is a pair but no score', async () => {
  // });
});

// put in a score via direct db access

// then get it via the api

// test get scores
// test uri, themoji, interval
// uri not found
// themoji not found
// interval invalid (?)
// test you can see it with no interval (all time)
// test you can see it with an interval
// test that you can't see it with a too small interval
// test that multiple score records are summed correctly
// test no rows
// test bad input -> 400
// test invalid input -> 400
// try same song with different emojis (should be different scores)
// sql injection
