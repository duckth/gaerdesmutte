FROM ruby:3.2.0 AS gaerdesmutte

ARG RAILS_ENV=production

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile ./
COPY Gemfile.lock ./

RUN gem install bundler && bundle install

COPY . ./

RUN bundle exec rails zeitwerk:check

EXPOSE 3000
