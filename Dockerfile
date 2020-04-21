FROM php:7.3-apache
RUN apt-get update
#WORKDIR /var/www/html
COPY .  /var/www/html
RUN cat apache.conf > /etc/apache2/sites-available/000-default.conf
# Enable rewrite for use in .htaccess file
RUN a2enmod rewrite
RUN service apache2 restart
CMD ["apachectl", "-D", "FOREGROUND"]
