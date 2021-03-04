FROM nginx
MAINTAINER Álvaro Vaca Ferreras "avacaferreras@gmail.com"

EXPOSE 80
ADD script.sh /usr/local/bin/
ADD site.conf /etc/nginx/conf.d/

RUN chmod +x /usr/local/bin/script.sh

ENTRYPOINT ["script.sh"]
