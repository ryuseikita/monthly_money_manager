FROM ruby:2.6.3
RUN apt-get update -qq && \
    apt-get install -y apt-utils \
                       build-essential \
                       libpq-dev \
                       nodejs \
                       default-mysql-client \
                       cron
RUN gem install bundler
RUN mkdir -p /app
WORKDIR /app
ADD . /app
RUN bundle config --local build.sassc --disable-march-tune-native
RUN bundle install -j4

#cron設定
RUN /bin/cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

EXPOSE 3000