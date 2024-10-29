# Use the previously built base image
ARG USERNAME
ARG REPOSITORY

FROM ghcr.io/${USERNAME}/${REPOSITORY}/nextjs-docker-base:latest

COPY . .

RUN npm run build

ENV NODE_ENV production

EXPOSE 3000

CMD npm run start
