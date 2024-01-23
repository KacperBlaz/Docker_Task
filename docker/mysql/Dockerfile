FROM ubuntu:22.04 as builder

RUN apt-get update && \
    apt-get install -y mysql-server && \
    echo "bind-address   = 127.0.0.1" >> /etc/mysql/mysql.conf.d/mysql.cnf

EXPOSE 3306

CMD ["/bin/bash", "-c", "sleep infinity"]
#CMD ["mysqld"]
