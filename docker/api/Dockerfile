FROM ruby:3.0.0-slim

ENV APP_ROOT /aravica

RUN apt-get update -qq && \
    apt-get install -y build-essential default-libmysqlclient-dev default-mysql-client

WORKDIR $APP_ROOT

COPY Gemfile Gemfile.lock $APP_ROOT/

RUN bundle install
