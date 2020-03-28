# 20.03.24現在最新安定版のイメージを取得
FROM ruby:2.7.0

# 必要なパッケージのインストール
RUN apt-get update -qq && \
    apt-get install -y build-essential \ 
                       libpq-dev \
                       nodejs && rm -rf /var/lib/apt/lists/*

RUN mkdir /study-7

ENV APP_ROOT /study-7
WORKDIR $APP_ROOT

ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

RUN bundle install
ADD . $APP_ROOT