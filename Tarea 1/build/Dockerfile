FROM debian
MAINTAINER Álvaro Vaca Ferreras "avacaferreras@gmail.com"

EXPOSE 80
ADD bookmedik/ /var/www/html/
ADD script.sh /usr/local/bin/

RUN apt-get update && apt-get -y install apache2 libapache2-mod-php php php-mysql && apt-get clean && rm -rf /var/lib/apt/lists/* && chmod +x /usr/local/bin/script.sh

ENTRYPOINT ["script.sh"]
