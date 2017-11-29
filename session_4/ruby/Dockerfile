FROM ruby:2.4.1

ENV app /app
RUN mkdir -p $app

COPY . $app

WORKDIR $app

RUN bundle install -j 10