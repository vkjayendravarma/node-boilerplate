FROM ubuntu:20.04
LABEL maintainer="Jayendra Varma<vkjayendravarma@gmail.com>"

RUN apt-get update

FROM node:16.15.0

RUN mkdir /app
WORKDIR /app

COPY package*.json ./

RUN npm i

COPY . .

CMD npm start

EXPOSE 3000