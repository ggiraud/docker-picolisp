FROM ubuntu:latest

RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install -y vim picolisp
RUN apt-get autoremove --purge -y

ENV SOURCES_PATH=/root/src

RUN mkdir $SOURCES_PATH
VOLUME $SOURCES_PATH
WORKDIR $SOURCES_PATH

EXPOSE 8080

ENTRYPOINT exec /usr/bin/pil
