FROM ubuntu:latest

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
		vim \
		picolisp; \
	rm -rf /var/lib/apt/lists/*

ENV SOURCES_PATH=/root/src

RUN mkdir $SOURCES_PATH
VOLUME $SOURCES_PATH
WORKDIR $SOURCES_PATH

EXPOSE 8080

ENTRYPOINT  ["pil"]
