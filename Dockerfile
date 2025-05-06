ARG NODE_VERSION=23

FROM node:${NODE_VERSION}-alpine AS base

WORKDIR /app

COPY package*.json ./

RUN npm i

COPY . .

CMD npm run dev

EXPOSE 3000