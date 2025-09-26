#!/bin/bash

mode="$1"
shift  # Supprime le premier argument de la liste

if [ "$mode" = "dev" ] || [ "$mode" = "test" ] || [ "$mode" = "prod" ]; then
    autres_args=("$@")  # Stocker le reste des arguments dans un tableau
    echo "Mode : $mode"
    echo "Autres arguments : ${autres_args[*]}"
else
    echo "Erreur : le premier argument doit être 'dev' ou 'test' ou 'prod'" >&2
    exit 1
fi

COMPOSE_FILE=docker-compose.yml
if [ "$mode" == "dev" ]; then
  COMPOSE_FILE=docker-compose-dev.yml
fi

docker-compose -f ${COMPOSE_FILE} --project-name nextcloud-${mode} --env-file .env.${mode} ${autres_args[*]}

