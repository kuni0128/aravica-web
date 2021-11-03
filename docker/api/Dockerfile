FROM ruby:3.0.2-slim

ENV APP_ROOT /app

RUN apt-get update -qq && apt-get install -y build-essential

WORKDIR $APP_ROOT

COPY Gemfile Gemfile.lock $APP_ROOT/

RUN bundle install
