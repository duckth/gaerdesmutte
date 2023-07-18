FROM ruby:3.2.0 AS gaerdesmutte

ARG RAILS_ENV=production
ARG RAILS_MASTER_KEY

ENV RAILS_ENV=$RAILS_ENV
ENV RAILS_MASTER_KEY=$RAILS_MASTER_KEY

RUN apt update && apt install -y libvips42

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile ./
COPY Gemfile.lock ./

RUN gem install bundler:2.4.14 && bundle install

COPY . ./

RUN bundle exec rails zeitwerk:check
RUN bundle exec rake assets:precompile

EXPOSE 3000
