import { BallotType, PostBallotRequestBody } from "@readybot/api-contracts";
import dotenv from "dotenv";
import { url } from "inspector/promises";
dotenv.config();

// this is a client that can be used to interact with the API.
export type ApiClient = {
  postBallot(ballotType: BallotType, messageID: string): Promise<void>;
};

// get an api client
export function createApiClient(): ApiClient {
  return {
    // function to post a ballot to the API
    postBallot: async (ballotType: BallotType, messageID: string) => {
      // construct the request body
      let ballotsRequestBody: PostBallotRequestBody = {
        ballotType,
        messageID,
      };

      // ensure that the API_PORT environment variable is set
      if (process.env.API_PORT === undefined) {
        throw new Error("API_PORT not set...");
      }

      // POST /ballots with ballotType and messageID in the body
      const res = await fetch(
        `http://api:${process.env.API_PORT}/ballots`, // TODO(jruth): don't hardcode the api base url
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(ballotsRequestBody),
        },
      );

      // if the response is not ok, throw an error
      if (!res.ok) {
        throw new Error(`Failed to POST /ballots: ${res.statusText}`);
      }
    },
  };
}
