FROM node:20.3.0-alpine3.18

WORKDIR /app

# ip do container do mongodb "inspect... ipadress"
# ARG MONGO=$MONGOIP

# agora a conecção será com o nome do container ao invés do ip
ENV MONGODB=meu-mongodb

EXPOSE 3000

COPY package-lock.json .

COPY package.json .

RUN npm install

COPY . .

CMD [ "node", "app.js" ]