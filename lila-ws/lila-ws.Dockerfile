FROM sbtscala/scala-sbt:eclipse-temurin-jammy-21.0.2_13_1.9.9_3.4.0

ENV LILA_URL=http://localhost:8080
ENV ENABLE_MONITORING=true

COPY ./lila-ws /lila-ws
COPY ./lila-ws.conf /lila-ws.conf
WORKDIR /lila-ws

ENTRYPOINT sbt run -Dconfig.file=/lila-ws.conf