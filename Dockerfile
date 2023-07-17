FROM ruby:3.2.0 AS gaerdesmutte

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile ./
COPY Gemfile.lock ./

RUN gem install bundler && bundle install

COPY . ./

RUN bundle exec rake assets:precompile

EXPOSE 3000
