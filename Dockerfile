FROM docker:latest

ENV SBT_VERSION 1.1.1

RUN apk add --update --no-cache openjdk8 bash curl && \
    curl -sL "https://github.com/sbt/sbt/releases/download/v$SBT_VERSION/sbt-$SBT_VERSION.tgz" | gunzip | tar -x -C /usr/local && \
    ln -s /usr/local/sbt/bin/sbt /usr/local/bin/sbt && \
    sbt -version

WORKDIR /code