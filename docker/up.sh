#!/bin/bash

docker-compose --project-name nextcloud --env-file .env.${1} up -d