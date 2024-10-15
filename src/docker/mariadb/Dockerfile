FROM debian:buster

RUN apt update && \
	apt install mariadb-server -y

COPY ./files/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./files/setup.sh /
RUN chmod +x /setup.sh

# RUN mkdir -p /var/run/mysqld /var/lib/mysql && \
# 	chown -R mysql:mysql /var/run/mysqld /var/lib/mysql && \
# 	chmod 777 /var/run/mysqld

CMD ["/setup.sh"]
