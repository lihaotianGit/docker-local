FROM java:8-jdk-alpine

RUN apk update \
  && apk add ca-certificates wget \
  && update-ca-certificates

RUN apk add --no-cache --update-cache bash

# install rocketmq
RUN wget -O alibaba-rocketmq.tar.gz https://github.com/alibaba/RocketMQ/releases/download/v3.2.6/alibaba-rocketmq-3.2.6.tar.gz \
  && tar -xzf alibaba-rocketmq.tar.gz \
  && rm alibaba-rocketmq.tar.gz

# set timezone --lihaotian
ENV TIMEZONE Asia/Shanghai
RUN apk add tzdata \
  && cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime \
  && echo "${TIMEZONE}" > /etc/timezone

RUN chmod +x /alibaba-rocketmq/bin/mqnamesrv \
  && chmod +x /alibaba-rocketmq/bin/mqbroker \
  && chmod +wx /alibaba-rocketmq/bin/play.sh
