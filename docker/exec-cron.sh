#!/bin/bash

#echo `docker ps | grep -E 'nextcloud-.+_nextcloud_1' | sed 's/nextcloud-\(.+\)_nextcloud/\1/'`

NC_CONTAINER=`docker ps --format '{{.Names}}' | grep -E 'nextcloud-.+[_-]nextcloud[_-]1'`

echo ${NC_CONTAINER}


docker exec -u www-data ${NC_CONTAINER} php /var/www/html/cron.php
