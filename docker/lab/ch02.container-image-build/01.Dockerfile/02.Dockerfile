FROM ubuntu:18.04
LABEL maintainer="educafe <edu4cafe@gmail.com>"
LABEL description="Dockerfile using EXPOSE for apache2"

USER root
RUN apt-get update
RUN apt-get -y install apache2 && apt-get clean
#RUN echo "Welcome to Apache2 Web Server" > /var/www/html/index.html
	
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]

