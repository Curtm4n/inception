FROM alpine:3.15

#Update/upgrade packages list and install nginx/openssl
RUN apk update && apk upgrade && apk add \
	nginx \
	openssl

#Add my own config file for nginx and the index.php page
COPY tools/nginx.conf /etc/nginx/nginx.conf
#RUN chmod -R 777 /var/www/localhost
COPY tools/index.php /var/www/html/index.php

#Add my own infos for certificate, create a repo for the pair key/crt and create the self-signed certificate
COPY tools/openssl.txt /tmp/openssl.txt
RUN mkdir -p /etc/ssl/private /etc/ssl/certs
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt < /tmp/openssl.txt

#Expose the port 443(https)
EXPOSE 443

#Launch nginx as a service instead of a daemon to keep the container running
ENTRYPOINT ["nginx", "-g", "daemon off;"]
