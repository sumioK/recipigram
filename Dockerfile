FROM ruby:2.5.7
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    default-mysql-client \
    yarn

WORKDIR /RailsMySQLSample
COPY Gemfile Gemfile.lock /RailsMySQLSample/
RUN bundle install