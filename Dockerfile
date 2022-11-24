FROM ubuntu:jammy

ARG DEBIAN_FRONTEND=noninteractive
ARG SQUID_VERSION=5.2-1ubuntu4.2

RUN apt-get update && \
    apt-get install -y \
        "squid=${SQUID_VERSION}" && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD [ "/usr/sbin/squid", "-N" ]

