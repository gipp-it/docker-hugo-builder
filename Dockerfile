FROM debian:latest

ENV HUGO_VERSION 0.53

RUN set -x \
    && apt-get update \
    && apt-get upgrade -y \
    && apt install wget -y \
    && wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.deb \
    && dpkg -i hugo_${HUGO_VERSION}_Linux-64bit.deb
