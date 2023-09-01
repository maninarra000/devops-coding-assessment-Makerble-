
FROM ruby:2.7
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install
COPY . .
CMD ["rails", "server", "-b", "0.0.0.0"]
