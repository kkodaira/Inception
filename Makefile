all: sudo docker compose -f ./src/docker-compose.yml up --build -d

clean: sudo docker compose -f ./src/docker-compose.yml down

rmv: sudo docker compose volume rm mariadb wordpress

re:
	clean
	all

.PHONY: all clean rmv re