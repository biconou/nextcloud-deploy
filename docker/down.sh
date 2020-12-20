#!/bin/bash

docker-compose --project-name nextcloud-${1} --env-file .env.${1} down