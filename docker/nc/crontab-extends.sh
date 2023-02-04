#!/bin/bash

USER=www-data

crontab -l -u ${USER} | cat - crontab-extends | crontab -u ${USER} -

service cron start
