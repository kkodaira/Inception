FROM --platform=linux/amd64 debian:latest

RUN apt update && \
	apt-get install -y php-fpm php-mysql mariadb-client curl wget unzip && \
	mkdir /var/www/ && \
	cd /var/www/ && \
	wget https://wordpress.org/latest.tar.gz && \
	tar -xzf latest.tar.gz && \
	mv wordpress /var/www/html && \
	chown -R www-data:www-data /var/www/html && \
	service php8.2-fpm start