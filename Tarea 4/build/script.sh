#!/bin/bash

mv /opt/prestashop_1.7.7.2.zip /var/www/html/
unzip prestashop_1.7.7.2.zip
unzip -o prestashop.zip
rm prestashop.zip prestashop_1.7.7.2.zip
chown -R www-data:www-data /var/www/html

apache2ctl -D FOREGROUND
