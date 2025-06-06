FROM node:20.3.0-alpine3.18

WORKDIR /app

# ip do container do mongodb "inspect... ipadress"
ARG MONGO=$MONGOIP

ENV MONGODB=$MONGO

EXPOSE 3000

COPY package-lock.json .

COPY package.json .

RUN npm install

COPY . .

CMD [ "node", "app.js" ]