FROM alpine

#Update packages/install openrc and mariadb
RUN apk update && apk upgrade \
&& apk add openrc --no-cache \
&& apk add mariadb mariadb-common mariadb-client

#Make rc-service usable and setup basic database
RUN openrc \
&& touch /run/openrc/softlevel \
&& /etc/init.d/mariadb setup
#&& rc-service mariadb start

EXPOSE 3306

#Start mariadb service
#CMD rc-service mariadb start && mysqld
CMD sleep infinity
