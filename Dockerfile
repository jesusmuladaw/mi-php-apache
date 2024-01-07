FROM php:apache

ENV APACHE_LOG_DIR /var/log/apache2

RUN apt-get update && \
    apt-get install -y vim nano net-tools
RUN mkdir -p /var/www/html/web1/
RUN mkdir -p /etc/apache2/tls/

COPY web1/web1.com.conf /etc/apache2/sites-available/
COPY web1/ /var/www/html/web1/
COPY web1/tls/ /etc/apache2/tls/

RUN a2enmod rewrite && \
    a2enmod ssl && \
    a2ensite web1.com.conf

EXPOSE 80
EXPOSE 443
