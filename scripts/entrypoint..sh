#!/bin/bash

# Variables
GITDIR="/tmp/git"

SERVERURL="/home/web"

# Pull required github repos

# link custom setup files

# install dependencies

# setup server logs folder
mkdir -p /data/serverlogs

# remove existing error_log if exists
mkdir -p $SERVERURL/data/serverlogs
rm -f $SERVERURL/data/log/error_log
touch $SERVERURL/data/log/error_log

# php app.php my-migration-command    # run migrations
# service cron start                  # start some services

# start the apache2 service in the foreground to keep
# the container from closing
exec apache2-foreground             # main execution
