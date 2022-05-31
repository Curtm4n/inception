FROM alpine:3.15

#Update/upgrade packages list and install php
RUN apk update && apk upgrade && apk add \
	php

#Download and install wordpress  A REVOIR
RUN mkdir -p /usr/share/webapps/ \
&& cd /usr/share/webapps/ \
&& wget http://wordpress.org/latest.tar.gz \
&& tar -xzvf latest.tar.gz \
&& rm latest.tar.gz

CMD sleep infinity
