FROM node:lts-alpine3.21 as base

RUN mkdir /SotN-Randomizer
WORKDIR /SotN-Randomizer
COPY /SotN-Randomizer/ /SotN-Randomizer
COPY server.js /SotN-Randomizer

RUN npm install

EXPOSE 8080
ENTRYPOINT ["node", "server.js"]