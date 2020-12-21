FROM rust:1.48-alpine

RUN apk add --no-cache musl-dev \
    && apk add openssl \
    && apk add libressl-dev \
    && apk add zip \
    && apk add --update py3-pip \
    && apk add wget \
    && pip install aws-sam-translator docopt \
    && wget https://raw.githubusercontent.com/awslabs/serverless-application-model/develop/bin/sam-translate.py \
    && pip install --no-cache-dir --upgrade wheel awscli \
    && pip install cloudformation-cli-python-plugin
