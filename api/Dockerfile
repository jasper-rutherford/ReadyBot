# Use a slim Node base image
FROM node:22-slim

# Set working dir
WORKDIR /app

# Copy package.json files 
COPY package*.json ./
COPY api/package*.json ./api/
COPY api-contracts/package*.json ./api-contracts/

# install dependencies
RUN npm install

# Copy the rest of the code
COPY api/ ./api/
COPY api-contracts/ ./api-contracts/

# compile TypeScript to JavaScript
RUN npm run -w @readybot/api-contracts build
RUN npm run -w @readybot/api build

# set working dir to api for entrypoint
WORKDIR /app/api

ENTRYPOINT ["/bin/sh"]

# command the api to begin
CMD ["./docker-entrypoint.sh"]
