FROM ruby:2.6.3
RUN apt-get update -qq && \
    apt-get install -y apt-utils \
                       build-essential \
                       libpq-dev \
                       nodejs \
                       default-mysql-client
RUN gem install bundler
RUN mkdir -p /www/app
WORKDIR /www/app
ADD Gemfile /www/app/Gemfile
ADD Gemfile.lock /www/app/Gemfile.lock
RUN bundle install -j4
ADD . /www/app

EXPOSE 3000
