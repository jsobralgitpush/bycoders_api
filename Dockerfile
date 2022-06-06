FROM ruby:2.6.4

RUN apt-get --allow-releaseinfo-change update && apt-get install -y build-essential libpq-dev git-core curl zlib1g-dev libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev

RUN mkdir /bycoders_api

WORKDIR /bycoders_api

ADD Gemfile /bycoders_api/Gemfile
ADD Gemfile.lock /bycoders_api/Gemfile.lock

RUN gem update --system

RUN gem install bundler -v 2.2.21

RUN bundle install

ADD . /bycoders_api