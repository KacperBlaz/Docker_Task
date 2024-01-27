FROM ubuntu:22.04 as builder

ARG DEBIAN_FRONTEND=noninteractive
ARG PHP_VERSION=8.1
ARG CERTS_PATH=/etc/apache2/certificates

RUN apt-get update && apt-get install -y php${PHP_VERSION}  libapache2-mod-php php-curl php-gd php-mbstring php-mysql php-xml php-xmlrpc php-soap php-intl php-zip && \
    a2enmod ssl && \
    mkdir "-p" ${CERTS_PATH} && \
    openssl req -x509 -newkey rsa:2048 -keyout ${CERTS_PATH}/apache2.key -out ${CERTS_PATH}/apache2.crt -nodes -days 365 -subj "/CN=localhost"

WORKDIR /var/www/

CMD ["apachectl", "-D", "FOREGROUND"]
