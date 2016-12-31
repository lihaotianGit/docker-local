FROM java:8-jdk-alpine

MAINTAINER lihaotian

# install required tools
RUN apk update \
  && apk add ca-certificates wget \
  && update-ca-certificates

# install rocketmq
RUN wget -O alibaba-rocketmq.tar.gz https://github.com/alibaba/RocketMQ/releases/download/v3.2.6/alibaba-rocketmq-3.2.6.tar.gz \
  && tar -xzf alibaba-rocketmq.tar.gz \
  && rm alibaba-rocketmq.tar.gz

RUN apk add --no-cache --update-cache bash

# set timezone --lihaotian
ENV TIMEZONE Asia/Shanghai
RUN apk add tzdata \
  && cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime \
  && echo "${TIMEZONE}" > /etc/timezone

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

RUN chmod +x /alibaba-rocketmq/bin/mqnamesrv \
  && chmod +x /alibaba-rocketmq/bin/mqbroker \
  && chmod +wx /alibaba-rocketmq/bin/play.sh

COPY conf.properties /alibaba-rocketmq/bin/

#RUN sed -i 's/ADDR=`hostname -i`:9876/ADDR=127.0.0.1:9876/g' /alibaba-rocketmq/bin/play.sh

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 9876
