FROM microsoft/aspnetcore:1.1.2

LABEL maintainer=pierregordon@protonmail.com

ENV DOCKERIZE_VERSION v0.5.0

RUN apt-get update && \
    apt-get install -y --no-install-recommends wget

RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz && \
    tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz && \
    rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz
