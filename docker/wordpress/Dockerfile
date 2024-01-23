FROM ubuntu:22.04 as builder

ARG DEBIAN_FRONTEND=noninteractive
ARG PHP_VERSION=8.1

RUN apt-get update && apt-get install php${PHP_VERSION}  libapache2-mod-php php-curl php-gd php-mbstring php-mysql php-xml php-xmlrpc php-soap php-intl php-zip wget vim unzip -y && \
    echo "ServerName localhost" >> /etc/apache2/apache2.conf

WORKDIR /var/www/

CMD ["/bin/bash", "-c", "sleep infinity"]

#CMD ["apachectl", "-D", "FOREGROUND"]
