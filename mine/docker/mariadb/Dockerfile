FROM debian:buster

RUN

RUN apt-get update && \
	apt-get -y install mariadb-server

COPY ./docker/mariadb/my.conf /etc/mysql/mariadb.conf.d/50-server.cnf

CMD ["/setup.sh"]