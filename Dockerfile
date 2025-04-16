#Basic dockerfile for a node app

FROM node:alpine-slim

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "server.js"]