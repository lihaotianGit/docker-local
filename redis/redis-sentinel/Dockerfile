FROM redis:3.0.7-alpine

MAINTAINER modified from https://github.com/s7anley/redis-sentinel-docker

RUN set -x \
    && apk update \
    && apk add curl bash

ADD docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

# set timezone --lihaotian
ENV TIMEZONE Asia/Shanghai
RUN apk add tzdata \
  && cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime \
  && echo "${TIMEZONE}" > /etc/timezone

EXPOSE 26379

ENTRYPOINT ["/docker-entrypoint.sh"]
