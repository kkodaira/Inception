FROM debian:bookworm

RUN

RUN apt-get update && \
	apt-get -y install mariadb-server

COPY ./files/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./files/setup.sh /
RUN chmod +x /setup.sh

CMD ["/setup.sh"]