#!/bin/bash


NC_CONTAINER=`docker ps --format '{{.Names}}' | grep -E 'nextcloud-.+[_-]nextcloud[_-]1'`

echo ${NC_CONTAINER}

docker network connect elk-deploy_elk ${NC_CONTAINER}
docker exec -u www-data ${NC_CONTAINER} php occ fulltextsearch:check
docker exec -u www-data ${NC_CONTAINER} php occ fulltextsearch:test
