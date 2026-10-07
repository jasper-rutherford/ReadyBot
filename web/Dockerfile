FROM node:lts-alpine

# Recieve the arg that was passed in
ARG WEB_PORT

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE $WEB_PORT

CMD ["npm", "run", "dev"]