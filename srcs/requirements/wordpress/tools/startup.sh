#!/bin/sh

if [ ! -d /var/www/html/wordpress ]
then
	cd /var/www/html
	wget http://wordpress.org/latest.tar.gz
	tar -xzvf latest.tar.gz
	rm latest.tar.gz
fi

php-fpm7 -F -R
