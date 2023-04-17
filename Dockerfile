FROM php:8-apache
LABEL version="1.0"
LABEL description="PhP website"

WORKDIR /var/www/html
COPY ./website /var/www/html