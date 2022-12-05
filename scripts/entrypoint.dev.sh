#!/bin/bash

# Variables
GITDIR="/tmp/git"

SERVERURL="/home/web/public_html"

# link custom setup files

# setup server logs
mkdir -p /data/serverlogs

# remove existing error_log if exists
mkdir -p $SERVERURL/data/serverlogs
rm -f $SERVERURL/data/serverlogs/error_log
touch $SERVERURL/data/serverlogs/error_log

# php app.php my-migration-command    # run migrations
# service cron start                  # start some services

# start the apache2 service in the foreground to keep the 
# container from closing
exec apache2-foreground             # main execution
