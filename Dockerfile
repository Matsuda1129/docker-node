FROM node:8-alpine

RUN npm install -g nodemon

RUN mkdir -p /backend_node
WORKDIR /backend_node

COPY backend_node/package*.json ./

COPY backend_node/ .

RUN npm install

EXPOSE 3000
CMD [ "nodemon" ]