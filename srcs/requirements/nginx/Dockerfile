FROM alpine:3.15

#Update/upgrade packages list and install nginx
RUN apk update && apk upgrade && apk add \
	nginx

#Expose the port 80 (http) Change this for port 443 (https/ssl) when tls will be installed
EXPOSE 80

#Launch nginx as a service instead of a daemon to keep the container running
ENTRYPOINT ["nginx", "-g", "daemon off;"]
