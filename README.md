# sandbox
Play Area

### Script for modifying the Apache port:
``` 
#!/usr/bin/env bash
APACHE_LISTEN_PORT=8000
cat /etc/apache2/ports.conf
echo ----------------------------------
sed -i "s/Listen 80/Listen ${APACHE_LISTEN_PORT}/g" /etc/apache2/ports.conf
sed -i "s/:80/:${APACHE_LISTEN_PORT}/g" /etc/apache2/sites-enabled/*
cat /etc/apache2/ports.conf
apache2-foreground
```

### Dockerfile for getting docker's Apache to use different port:
```
FROM php:7.0-apache

COPY testPhp.php /var/www/html
COPY start-apache /usr/local/bin

CMD ["start-apache"]
```
