# Use a slim Node base image
FROM node:22-slim

# Set working dir
WORKDIR /app

# Install dbmate + dependencies
RUN apt-get update \
  && apt-get install -y wget sqlite3 ca-certificates postgresql-client

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# compile TypeScript to JavaScript
RUN npm run build

ENTRYPOINT ["/bin/sh"]

# Command to run the app
CMD ["./docker-entrypoint.sh"]


