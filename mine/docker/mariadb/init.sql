CREATE DATABASE wordpress_db;
CREATE USER 'epicarts'@'%' IDENTIFIED BY 'password';
GRANT ALL ON wordpress_db.* TO 'epicarts'@'%';
FLUSH PRIVILEGES;