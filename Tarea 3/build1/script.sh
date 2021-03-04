#!/bin/bash

sed -i 's|user="root"|user="'"$MYSQL_USER"'"|g' /bookmedik/core/controller/Database.php
sed -i 's|pass=""|pass="'"$MYSQL_PASSWORD"'"|g' /bookmedik/core/controller/Database.php
sed -i 's|host="localhost"|host="mariadb-bookmedik"|g' /bookmedik/core/controller/Database.php
sed -i 's|ddbb="bookmedik"|ddbb="'"$MYSQL_DATABASE"'"|g' /bookmedik/core/controller/Database.php

/docker-entrypoint.sh nginx -g 'daemon off;'
