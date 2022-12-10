#!/bin/bash

# Variables
GITDIR="/tmp/git"
LOGDIR="/tmp/log"
SERVERURL="/home/web/"
DOCUMENTROOT="public_html"

# Pull required github repos

# link custom setup files

# install dependencies

# remove existing error.log if exists
rm -f $LOGDIR/error.log
touch $LOGDIR/error.log

# remove existing access.log if exists
rm -f $LOGDIR/access.log
touch $LOGDIR/access.log

# run migrations and database imports
# php app.php my-migration-command    # run migrations

# start some services
# service cron start

# start the apache2 service in the foreground to keep
# the container from closing
exec apache2-foreground             # main execution
