FROM jenkins:alpine

MAINTAINER lihaotian

USER root

ENV JENKINS_OPTS --httpPort=80
EXPOSE 80

# set timezone --lihaotian
ENV TIMEZONE Asia/Shanghai
RUN apk update \
  && apk add tzdata \
  && cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime \
  && echo "${TIMEZONE}" > /etc/timezone
