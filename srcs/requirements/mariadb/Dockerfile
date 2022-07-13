FROM alpine:3.15

#Update/upgrade packages list and install openrc and mariadb
RUN apk update && apk upgrade && apk add \
	mariadb \
	mariadb-common \
	mariadb-client

#Add my startup script to the container
COPY tools/startup.sh /tmp/startup.sh
COPY tools/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

#Expose the port 3306 for the database
EXPOSE 3306

#Start mariadb service
ENTRYPOINT ["sh", "/tmp/startup.sh"]
