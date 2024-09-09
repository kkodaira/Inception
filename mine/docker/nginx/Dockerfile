FROM --platform=linux/amd64 debian:latest

RUN apt update && \
	apt install -y nginx openssl && \
	apt clean && \
	mkdir /etc/nginx/ssl && \
	openssl req -new -newkey rsa:2048 -days 365 -nodes \
	-x509 -subj "/C=US/ST=State/L=City/O=Organization/OU=OrgUnit/CN=localhost" \
	-keyout /etc/nginx/ssl/nginx-selfsigned.key \
	-out /etc/nginx/ssl/nginx-selfsigned.crt

COPY ./docker/nginx/my.conf /etc/nginx/conf.d/my.conf