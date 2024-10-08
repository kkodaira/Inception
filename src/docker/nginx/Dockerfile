FROM debian:bookworm

RUN apt -y update && apt install -y nginx && apt install openssl -y

COPY ./files/setup.sh /

RUN chmod +x /setup.sh

CMD ["/setup.sh"]