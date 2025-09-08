FROM node:18-alpine

WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Make a place to persist the Spotify refresh token
RUN mkdir -p /data

# Port used for spotify web login
EXPOSE 8888

CMD ["npm", "start"]
