#!/bin/sh

if [ ! -d /var/www/html/wordpress ]
then
	mkdir /var/www/html/wordpress
	cd /var/www/html/wordpress
	wp core download --locale=fr_FR
fi

php-fpm7 -F -R
