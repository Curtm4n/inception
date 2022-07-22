FROM alpine:3.15

#Update/upgrade packages list and install openrc and mariadb
RUN apk update && apk upgrade && apk add \
	mariadb \
	mariadb-common \
	mariadb-client

#Add my startup script to the container
COPY tools/startup.sh /tmp/startup.sh

#Add my mariadb config file
COPY tools/my.cnf /etc/my.cnf

#Expose the port 3306 for the database
EXPOSE 3306

#Start mariadb service
ENTRYPOINT ["sh", "/tmp/startup.sh"]
