#!/bin/sh

sleep 10
if [ ! -d /var/www/html/wordpress ]
then
	mkdir /var/www/html/wordpress
	cd /var/www/html/wordpress
	wp core download --locale=fr_FR
	wp config create --dbhost=$WORDPRESS_DB_HOST --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD
	wp core install --url=cdapurif.42.fr --title=mon_site --admin_user=$WORDPRESS_DB_USER --admin_password=$MYSQL_ROOT_PASSWORD --admin_email=curtis_cacao@hotmail.fr
	wp user create correcteur correcteur@test.fr --user_pass=$WORDPRESS_DB_PASSWORD
fi

php-fpm7 -F -R
