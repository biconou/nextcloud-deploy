#!/bin/bash

#echo `docker ps | grep -E 'nextcloud-.+_nextcloud_1' | sed 's/nextcloud-\(.+\)_nextcloud/\1/'`

NC_CONTAINER=`docker ps --format '{{.Names}}' | grep -E 'nextcloud-.+_nextcloud_1'`

echo ${NC_CONTAINER}

echo $@
docker exec -it ${NC_CONTAINER} bash -c "$@"
 