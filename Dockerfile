FROM ubuntu:focal

ARG DEBIAN_FRONTEND=noninteractive
ARG SQUID_VERSION=4.10-1ubuntu1.7

RUN apt-get update && \
    apt-get install -y \
        "squid=${SQUID_VERSION}" && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD [ "/usr/sbin/squid", "-N" ]

