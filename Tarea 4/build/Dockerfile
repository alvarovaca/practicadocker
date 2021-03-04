FROM php:7.3-apache
MAINTAINER Álvaro Vaca Ferreras "avacaferreras@gmail.com"

EXPOSE 80
ADD script.sh /usr/local/bin/
WORKDIR /var/www/html/

RUN apt-get update && \
	apt-get -y install unzip wget zlib1g-dev libzip-dev libicu-dev libpng-dev && \
	wget https://download.prestashop.com/download/releases/prestashop_1.7.7.2.zip -P /opt/ && \
	docker-php-ext-install zip gd pdo_mysql intl && \
	a2enmod rewrite && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
  chmod +x /usr/local/bin/script.sh

ENTRYPOINT ["script.sh"]
