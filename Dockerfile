FROM debian
RUN apt-get update
RUN apt-get install apache2 -y
COPY * /var/www/html/
EXPOSE 80
cmd ["apache2ctl","-D","FOREGROUND"]
