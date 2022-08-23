FROM node:12.18.3-slim

ENV PORT=3010

WORKDIR /app

RUN apt-get update

COPY package*.json ./

RUN npm install -g pm2
RUN npm install

COPY . .

EXPOSE 3010

CMD ["npm", "start"]