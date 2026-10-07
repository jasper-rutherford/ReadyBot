import path from "node:path";
import react from "@vitejs/plugin-react";
// import { env } from "process";
import { defineConfig, loadEnv } from "vite";

// // TODO... put this elsewhere? do constant? thing?
// const mustGetEnv = (name: string): string => {
//   const val = env[name];
//   if (!val) {
//     throw new Error(`Missing required environment variable: ${name}`);
//   }
//   return val;
// }

// https://vite.dev/config/
export default defineConfig(({ mode }) => {
  const env = loadEnv(mode, path.resolve(__dirname, ".."), ""); 

  return  {
    plugins: [react()],
    server: {
      host: true,
      port: parseInt(env.WEB_PORT), // TODO i dont like this. i want it to fail if this happens
      // apparently this is where we'll plug into the api, eventually TM
      // proxy: {
      //   "/api": {
      //     target: process.env.API_URL ?? "http://localhost:3001",
      //     changeOrigin: true,
      //     rewrite: (p) => p.replace(/^\/api/, ""),
      //   },
      // },
    },
  }
});