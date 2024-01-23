#export PROJECT_NAME = docker_task
#export DOCKER_COMPOSE_PROJECT_NAME = ${PROJECT_NAME}_WEB
#
#export MYSQL_DATABASE=wordpress
#export MYSQL_ROOT_PASSWORD=Slasher33
#export MYSQL_USER=root
#export MYSQL_PASSWORD=Slasher33
#
#
#checking-project:
#ifndef PROJECT_NAME
#	$(error PROJECT_NAME is required)
#endif

test:
	pwd

build:
	docker-compose build

start:
	docker-compose up -d

stop:
	docker-compose down
