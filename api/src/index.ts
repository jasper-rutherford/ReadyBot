import { server } from './server.js';

// TODO(jruth): port MUST be set
const PORT = process.env.API_PORT || 3000;
server.listen(PORT, () => {
  console.log(`API server listening on port ${PORT}`);
});
