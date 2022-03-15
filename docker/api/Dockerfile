FROM ruby:3.0.0-slim

ENV APP_ROOT /aravica
EXPOSE 3000 1234 26162

RUN apt-get update -qq && \
    apt-get install -y build-essential default-libmysqlclient-dev default-mysql-client

WORKDIR $APP_ROOT

COPY Gemfile Gemfile.lock $APP_ROOT/

RUN bundle install
