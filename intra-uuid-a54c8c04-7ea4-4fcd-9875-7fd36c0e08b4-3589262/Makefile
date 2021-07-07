
include ./srcs/.env
COMMAND = cd srcs && sudo docker-compose -f docker-compose.yml
all:
	sudo chmod 777 /etc/hosts
	sudo echo "127.0.0.1" ${DOMAINE_NAME} >> /etc/hosts
	mkdir -p /home/zel-bagh/data/database
	mkdir -p /home/zel-bagh/data/files
	${COMMAND} up
up:
	${COMMAND} up -d
start:
	${COMMAND} start
stop:
	${COMMAND} stop
down:
	${COMMAND} down
clean:
	${COMMAND} down
	sudo sh rm_images.sh
ps:
	${COMMAND} ps
