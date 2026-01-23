# Use a slim Node base image
FROM node:22-slim

# Set working dir
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# compile TypeScript to JavaScript
RUN npm run build

ENTRYPOINT ["/bin/sh"]

# command the bot to begin
CMD ["./docker-entrypoint.sh"]
