FROM debian:buster

ENV MYSQL_DATABASE=wordpress_db
ENV MYSQL_USER=epicarts
ENV MYSQL_PASSWORD=password

COPY ./docker/mariadb/init.sql /docker-entrypoint-initdb.d/

RUN apt-get update && \
	apt-get -y install mariadb-server

COPY ./docker/mariadb/my.conf /etc/mysql/mariadb.conf.d/50-server.cnf