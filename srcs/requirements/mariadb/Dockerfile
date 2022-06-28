FROM alpine:3.15

#Update/upgrade packages list and install openrc and mariadb
RUN apk update && apk upgrade && apk add \
	#openrc --no-cache \
	mariadb \
	mariadb-common \
	mariadb-client

#Make rc-service usable and setup basic database
#RUN openrc \
#&& touch /run/openrc/softlevel
#RUN /etc/init.d/mariadb setup

#Add my startup script to the container
COPY tools/startup.sh /tmp/startup.sh

#Expose the port 3306 for the database
EXPOSE 3306

#Start mariadb service
ENTRYPOINT ["sh", "/tmp/startup.sh"]
