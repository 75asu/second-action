FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS gh-action-cluster.hyer8iz.mongodb.net
ENV MONGODB_USERNAME asutosh
ENV MONGODB_PASSWORD Crimsy123

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]