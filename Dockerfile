# Use the previously built base image
ARG USERNAME
ARG REPOSITORY

FROM ghcr.io/${USERNAME}/${REPOSITORY}/nextjs-docker-base:latest

COPY package.json ./
COPY package-lock.json ./

RUN npm i

COPY . .

RUN npm run build

ENV NODE_ENV production

EXPOSE 3000

CMD npm run start
