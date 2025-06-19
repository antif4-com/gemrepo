#syntax=docker/dockerfile:1
#check=error=true

# This Dockerfile is designed for production, not development. Use with Kamal. 
#
# To build by hand: 
# docker build -t gemrepo
# docker run -d -p 9292:9292 -name gemrepo gemrepo


ARG RUBY_VERSION=3.4.1
FROM docker.io/library/ruby:$RUBY_VERSION-slim AS base

ENV BUNDLE_DEPLOYMENT=1 \
    BUNDLE_PATH="/user/local/bundle" \
    BUND_WITHOUT="development"

#FROM base AS build

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential git libyaml-dev pkg-config && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

COPY Gemfile Gemfile.lock ./
RUN bundle install

#FROM base

COPY . . 

EXPOSE 9292
CMD ["bundle","exec","puma"]
