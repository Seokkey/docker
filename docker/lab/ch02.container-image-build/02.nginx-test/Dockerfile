FROM ubuntu:20.04
RUN apt-get update && apt-get install -y nginx	
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
#COPY html/index.html /var/www/html
COPY index.html /var/www/html
VOLUME ["/var/www/html"]							

CMD ["nginx"]									

EXPOSE 80

