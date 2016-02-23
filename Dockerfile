FROM boomtownroi/nodejs:latest

COPY ./src /app
WORKDIR /app

RUN npm install

CMD npm start