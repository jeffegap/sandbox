FROM php:7.0-apache

COPY testPhp.php /var/www/html
COPY start-apache /usr/local/bin

CMD ["start-apache"]
