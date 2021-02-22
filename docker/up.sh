#!/bin/bash

./down.sh dev
./down.sh test
./down.sh prod

docker-compose --project-name nextcloud-${1} --env-file .env.${1} up --build -d