FROM debian:buster

RUN apt update -y

RUN apt install php-fpm php-mysql -y

RUN apt install curl -y

COPY ./files/setup.sh /
COPY ./files/wp-config.php /

RUN chmod +x /setup.sh

CMD ["/setup.sh"]