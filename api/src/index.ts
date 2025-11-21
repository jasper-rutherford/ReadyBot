import { createServer } from './server.js';

// TODO(jruth): port MUST be set
const PORT = process.env.API_PORT || 3000;
const { server, close } = createServer();

const httpServer = server.listen(PORT, () => {
  console.log(`API server listening on port ${PORT}`);
});

const killServer = async () => {
  // httpServer.close returns immediately, but internally it waits for all existing connections to close,
  // and then calls the provided callback function.
  // So here we wrap it in a Promise to await its completion.
  await new Promise((res) => httpServer.close(() => res(null)));

  // close the database pool (see, we want all http connections to be closed before we close the db pool)
  await close();
};

// Graceful shutdown
process.on('SIGTERM', async () => {
  await killServer();
});

process.on('SIGINT', async () => {
  await killServer();
});
