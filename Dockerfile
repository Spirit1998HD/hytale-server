FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    apt-get -y install openjdk-25-jre

RUN useradd hytale --home /home/hytale --uid 1000 --gid 1000 --shell /bin/bash --disabled-password --gecos ""

COPY --chown=hytale:hytale ./resources/init.sh /init.sh
RUN ["chmod", "+x", "/init.sh"]

USER hytale

ENTRYPOINT ["/init.sh"]