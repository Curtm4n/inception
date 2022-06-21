FROM alpine:3.15

#Update/upgrade packages list and install php
RUN apk update && apk upgrade && apk add \
	php-fpm

#Add my own www.conf to php
COPY tools/www.conf /etc/php7/php-fpm.d/www.conf

#Download and install wordpress  A REVOIR /usr/share/webapps
RUN mkdir -p /var/www/html/webapps/ \
&& cd /var/www/html/webapps/ \
&& wget http://wordpress.org/latest.tar.gz \
&& tar -xzvf latest.tar.gz \
&& rm latest.tar.gz

#Add my startup script
COPY tools/startup.sh /tmp/startup.sh

#Expose the port 9000 for the wordpress 
EXPOSE 9000

ENTRYPOINT ["sh", "/tmp/startup.sh"]
