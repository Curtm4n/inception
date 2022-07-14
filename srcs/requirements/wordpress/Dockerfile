FROM alpine:3.15

#Update/upgrade packages list and install php
RUN apk update && apk upgrade && apk add \
	php-fpm \
	php-common \
	php-cli \
	php-phar \
	php-json \
	php7-mysqli \
	curl

#Add my own www.conf to php
COPY tools/www.conf /etc/php7/php-fpm.d/www.conf

#Add my startup script
COPY tools/startup.sh /tmp/startup.sh

#Expose the port 9000 for the wordpress 
EXPOSE 9000

ENTRYPOINT ["sh", "/tmp/startup.sh"]
