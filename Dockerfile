FROM docker:19.03.8

ARG SBT_VERSION 
ARG JDK_VERSION 

RUN apk add --update --no-cache $JDK_VERSION bash curl && \
    curl -sL "https://github.com/sbt/sbt/releases/download/v$SBT_VERSION/sbt-$SBT_VERSION.tgz" | gunzip | tar -x -C /usr/local && \
    ln -s /usr/local/sbt/bin/sbt /usr/local/bin/sbt && \
    sbt -version

WORKDIR /code
