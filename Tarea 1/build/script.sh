#!/bin/bash

sed -i 's|user="root"|user=getenv("MYSQL_USER")|g' /var/www/html/core/controller/Database.php
sed -i 's|pass=""|pass=getenv("MYSQL_PASSWORD")|g' /var/www/html/core/controller/Database.php
sed -i 's|host="localhost"|host="mariadb-bookmedik"|g' /var/www/html/core/controller/Database.php
sed -i 's|ddbb="bookmedik"|ddbb=getenv("MYSQL_DATABASE")|g' /var/www/html/core/controller/Database.php

apache2ctl -D FOREGROUND
