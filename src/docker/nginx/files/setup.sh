#!/bin/bash

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout /etc/ssl/private/nginx-selfsigned.key \
-out $CERTS_ -subj "/C=JP/L=TK/O=42/OU=student/CN=kkodaira.42.jp"

echo "
server { #https用の設定
	listen 443 ssl;
	listen [::]:443 ssl;
	
	server_name $DOMAIN_NAME www.$DOMAIN_NAME; #変えてみる
	
	ssl_certificate $CERTS_;
	ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;" \
> /etc/nginx/sites-available/default

echo '
	ssl_protocols TLSv1.3;
	
	index index.php;
	root /var/www/html;
	
	location ~ [^/]\.php(/|$) {
		try_files $uri =404;
		fastcgi_pass wordpress:9000;
		include fastcgi_params;
		fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
	}
} ' >> /etc/nginx/sites-available/default

nginx -g "daemon off;"