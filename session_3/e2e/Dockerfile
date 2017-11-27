FROM node:7.9.0

ENV APP /e2e
RUN mkdir -p $APP

WORKDIR $APP
COPY . $APP

RUN npm install
