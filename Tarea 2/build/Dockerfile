FROM php:7.3-apache
MAINTAINER Álvaro Vaca Ferreras "avacaferreras@gmail.com"

EXPOSE 80
ADD bookmedik/ /var/www/html/
ADD script.sh /usr/local/bin/

RUN docker-php-ext-install mysqli && chmod +x /usr/local/bin/script.sh

ENTRYPOINT ["script.sh"]
