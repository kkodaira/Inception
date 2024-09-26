FROM debian:bookworm

RUN apt -y update && apt install -y nginx && apt install openssl -y

COPY ./files/setup.sh /

CMD ["/setup.sh"]