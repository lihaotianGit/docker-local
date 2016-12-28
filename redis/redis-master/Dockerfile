FROM redis:3.0.7-alpine

MAINTAINER lihaotian

RUN set -x \
    && apk update

# set timezone --lihaotian
ENV TIMEZONE Asia/Shanghai
RUN apk add tzdata \
  && cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime \
  && echo "${TIMEZONE}" > /etc/timezone
