FROM nginx:latest

MAINTAINER supergramm/nginx

RUN echo "Europe/Athens" > /etc/timezone \
 && dpkg-reconfigure -f noninteractive tzdata

RUN mkdir -p /etc/nginx/ssl

COPY common.conf /etc/nginx/conf.d/common.conf
