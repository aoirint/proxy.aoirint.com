FROM ubuntu:focal

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        squid && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

#CMD [ "/usr/sbin/squid", "-sYC" ]

