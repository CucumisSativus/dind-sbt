FROM docker:19.03.8

ENV SBT_VERSION 1.3.12
ENV JDK_VERSION openjdk11

RUN apk add --update --no-cache $JDK_VERSION bash curl && \
    curl -sL "https://github.com/sbt/sbt/releases/download/v$SBT_VERSION/sbt-$SBT_VERSION.tgz" | gunzip | tar -x -C /usr/local && \
    ln -s /usr/local/sbt/bin/sbt /usr/local/bin/sbt && \
    sbt -version

WORKDIR /code
