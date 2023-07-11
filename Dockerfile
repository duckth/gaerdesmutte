FROM ruby:3.2.0 AS gaerdesmutte

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile ./
COPY Gemfile.lock ./

RUN gem install bundler && bundle install
RUN bundle exec bootsnap precompile --gemfile app/ lib/ && bundle exec rails zeitwerk:check
RUN bin/rails assets:precompile

COPY . ./

EXPOSE 3000
