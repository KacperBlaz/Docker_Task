# Set the base image to Ubuntu 22.04
FROM ubuntu:22.04

ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD

RUN apt-get update && \
    apt-get install -y mysql-server openssl && \
    rm -rf /var/lib/apt/lists/* && \
    chown -R mysql:mysql /var/lib/mysql

RUN /etc/init.d/mysql start && \
    mysql -u root -e "CREATE DATABASE $MYSQL_DATABASE; CREATE USER '$MYSQL_USER' IDENTIFIED BY '$MYSQL_PASSWORD'; GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%'; GRANT GRANT OPTION ON *.* TO '$MYSQL_USER'@'%';" && \
    /etc/init.d/mysql stop

EXPOSE 3306

USER mysql

#CMD ["/bin/bash", "-c", "sleep infinity"]

CMD ["mysqld"]
