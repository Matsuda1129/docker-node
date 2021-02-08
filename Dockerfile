FROM node:8-alpine

RUN npm install -g nodemon

RUN mkdir -p /docker-node
WORKDIR /docker-node

COPY /package*.json ./

COPY / .

RUN npm install

EXPOSE 3000
CMD [ "nodemon" ]