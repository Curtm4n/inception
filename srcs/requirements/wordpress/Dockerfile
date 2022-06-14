FROM alpine:3.15

#Update/upgrade packages list and install php
RUN apk update && apk upgrade && apk add \
	php-fpm

#Download and install wordpress  A REVOIR
RUN mkdir -p /usr/share/webapps/ \
&& cd /usr/share/webapps/ \
&& wget http://wordpress.org/latest.tar.gz \
&& tar -xzvf latest.tar.gz \
&& rm latest.tar.gz

#Add my startup script
COPY tools/startup.sh /tmp/startup.sh

#Expose the port 9000 for the wordpress 
EXPOSE 9000

ENTRYPOINT ["sh", "/tmp/startup.sh"]
