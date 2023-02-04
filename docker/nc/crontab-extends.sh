#!/bin/bash

USER=www-data

cat - crontab-extends | crontab -u ${USER} -

service cron start
