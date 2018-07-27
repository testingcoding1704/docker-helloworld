FROM openjdk:8-jre-alpine

MAINTAINER Testing Coding <testingcoding1704@gmail.com>

ENV APP_ROOT=/opt/app-root \
  VERSION=latest

LABEL version="${VERSION}" \
  description="\
This is basic docker image for Hello World application. \
To start: `docker run -it --rm -p8080:8080 testingcoding1704/docker-helloworld`. \
To verify: `curl localhost:8080`. \
"

EXPOSE 8080

WORKDIR ${APP_ROOT}

COPY app.jar app.jar

RUN chown -R 1001:0 ${APP_ROOT} && \
  chmod -R g=u ${APP_ROOT} && \
  echo "/usr/bin/java -jar ${APP_ROOT}/app.jar" > /run.sh && \
  chmod 770 /run.sh

USER 1001:0

CMD /run.sh
