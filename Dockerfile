FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install openjdk-25-jre

RUN usermod ubuntu -d -m /home/hytale && rm -rf /home/ubuntu

COPY --chown=ubuntu:ubuntu ./resources/init.sh /init.sh
RUN ["chmod", "+x", "/init.sh"]

USER ubuntu

ENTRYPOINT ["/init.sh"]