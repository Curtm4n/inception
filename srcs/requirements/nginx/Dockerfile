FROM debian:buster

#Update/upgrade packages list and install Nginx
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	nginx

#COPY ./default.conf /etc/nginx/conf.d/default.conf

#Expose the port 80 (http) Chanhe this for port 443 (https) when tls will be installed
EXPOSE 80

#Launch nginx as a service instead of a daemon to keep the container running
ENTRYPOINT ["nginx", "-g", "daemon off;"]
