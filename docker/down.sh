#!/bin/bash

COMPOSE_FILE=docker-compose.yml
if [ ${1} == "dev" ]; then
  COMPOSE_FILE=docker-compose-dev.yml
fi

docker-compose -f ${COMPOSE_FILE} --project-name nextcloud-${1} --env-file .env.${1} down