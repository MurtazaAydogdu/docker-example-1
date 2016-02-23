FROM boomtownroi/nodejs:latest

COPY ./src /app
WORKDIR /app

RUN npm install
RUN npm install -g pm2

EXPOSE 3000

CMD pm2 start -i 0 --watch server.js && pm2 logs all