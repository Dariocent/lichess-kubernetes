FROM sbtscala/scala-sbt:eclipse-temurin-jammy-21.0.2_13_1.9.9_3.4.0

ENV LILA_DOMAIN=172.30.10.3:8080
ENV LILA_URL=http://172.30.10.3:8080
ENV ENABLE_MONITORING=true

COPY ./lila /lila
COPY ./lila.conf /lila/conf/application.conf

WORKDIR /lila

ENTRYPOINT ./lila run
