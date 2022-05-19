FROM debian:buster

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install nginx -y

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]
