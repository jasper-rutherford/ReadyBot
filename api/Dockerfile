# Use a slim Node base image
FROM node:18-slim

# Set working dir
WORKDIR /app

# Install dbmate + dependencies
RUN apt-get update \
  && apt-get install -y wget sqlite3 ca-certificates postgresql-client \
  && wget -O /usr/local/bin/dbmate https://github.com/amacneil/dbmate/releases/download/v1.16.0/dbmate-linux-amd64 \
  && chmod +x /usr/local/bin/dbmate

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# compile TypeScript to JavaScript
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Command to run the app
CMD ["node", "dist/index.js"]


