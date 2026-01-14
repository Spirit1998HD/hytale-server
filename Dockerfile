FROM eclipse-temurin:25-jre

RUN apt-get update && \
    apt-get install -y unzip

RUN mkdir -p /hytale && \
    mkdir -p /hytale/auth && \
    mkdir -p /hytale/server

COPY --chmod=755 ./resources/init.sh /hytale.sh

ENTRYPOINT ["/hytale.sh"]