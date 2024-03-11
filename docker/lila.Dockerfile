FROM sbtscala/scala-sbt:eclipse-temurin-jammy-21.0.2_13_1.9.9_3.4.0

COPY repos/. /

COPY ./conf/lila.conf /lila/conf/application.conf

WORKDIR /lila

ENTRYPOINT ./lila run