# Use a slim Node base image
FROM node:22-slim

# Set working dir
WORKDIR /app

# Copy package.json files 
COPY package*.json ./
COPY discord/package*.json ./discord/
COPY api-client/package*.json ./api-client/
COPY api-contracts/package*.json ./api-contracts/

# install dependencies
RUN npm install

# Copy the rest of the code
COPY discord/ ./discord/
COPY api-client/ ./api-client/
COPY api-contracts/ ./api-contracts/

# compile TypeScript to JavaScript
RUN npm run -w @readybot/api-contracts build
RUN npm run -w @readybot/api-client build
RUN npm run -w @readybot/discord build

# set working dir to discord for entrypoint
WORKDIR /app/discord

ENTRYPOINT ["/bin/sh"]

# command the bot to begin
CMD ["./docker-entrypoint.sh"]
