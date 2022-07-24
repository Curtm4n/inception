#!/bin/sh

mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
mkdir /run/mysqld
mariadbd --user=root &
sleep 10
mariadb -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE"
mariadb -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'"
mariadb -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' with grant option"
mariadb -e "CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'"
mariadb -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' with grant option"
mariadb -e "FLUSH PRIVILEGES"
wait
