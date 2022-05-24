FROM alpine

#Download and install php
RUN apk update \
&& apk add php

#This part download and install wordpress
RUN mkdir -p /usr/share/webapps/ \
&& cd /usr/share/webapps/ \
&& wget http://wordpress.org/latest.tar.gz \
&& tar -xzvf latest.tar.gz \
&& rm latest.tar.gz

CMD tail -f
