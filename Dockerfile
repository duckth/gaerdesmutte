FROM ruby:3.2.0 AS gaerdesmutte

RUN apt update && apt install -y libvips42

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile ./
COPY Gemfile.lock ./

RUN gem install bundler:2.4.14 && bundle install

COPY . ./

RUN bundle exec rake assets:precompile

EXPOSE 3000
