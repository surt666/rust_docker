FROM rust:1.48-alpine

RUN apk add --no-cache musl-dev \
    && apk add openssl \
    && apk add libressl-dev \
    && apk add zip
