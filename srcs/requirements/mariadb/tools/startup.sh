#!/bin/sh

mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
mkdir /run/mysqld
mariadbd --user=root
