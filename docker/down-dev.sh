#!/bin/bash

docker-compose -f docker-compose-dev.yml --project-name nextcloud-dev --env-file .env.dev down