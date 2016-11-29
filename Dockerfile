FROM ruby:2.3-slim
MAINTAINER RickR <rick@operationcode.org>
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev libsqlite3-dev
ENV INSTALL_PATH /operationcode
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY Gemfile Gemfile.lock ./
RUN bundle install --binstubs
COPY . .
RUN bundle exec rake RAILS_ENV=production SECRET_TOKEN=dummytoken assets:precompile
VOLUME ["$INSTALL_PATH/public"]
CMD puma -C config/puma.rb
