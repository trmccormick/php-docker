#!/bin/bash

# Variables
GITDIR="/tmp/git"
LOGDIR="/tmp/log"
SERVERURL="/home/web/public_html"

# Pull required github repos

# link custom setup files

# install dependencies

# remove existing error_log if exists
rm -f $LOGDIR/error_log
touch $LOGDIR/error_log

# php app.php my-migration-command    # run migrations
# service cron start                  # start some services

# start the apache2 service in the foreground to keep
# the container from closing
exec apache2-foreground             # main execution
