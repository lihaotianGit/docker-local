FROM nginx:1.10-alpine

MAINTAINER lihaotian

RUN apk update && apk add --no-cache --update-cache bash
RUN apk add curl

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8088

#ADD docker-entrypoint.sh /
#RUN chmod +x /docker-entrypoint.sh

#ENTRYPOINT ["/docker-entrypoint.sh"]
