# PHP Docker

> PHP Docker stack: Centos 7, Apache, MySQL, PHP and GIT.

This was setup was designed to allow easy migration of existing applications into a docker configuration.   

## Requirements
* [Docker Engine](https://docs.docker.com/installation/)
* [Docker Compose](https://docs.docker.com/compose/)
* [Docker Desktop](https://docs.docker.com/desktop/)

## What's inside
* [Centos] (https://www.centos.org/)
* [Apache](https://www.apache.org/)
* [MySQL](http://www.mysql.com/)
* [PHP](https://secure.php.net/)
* [GIT](https://git-scm.com/)

## Environment and Database settings
  To set your environment you need to create .env.db and .env.web these will hold all your settings like password for your database.

  In your .env.db if you are only doing development you can simply just create a file with just one line. I set mine to take empty passwords but if you want to set a password you can set it as you would in production with the instructions below.

      MYSQL_ALLOW_EMPTY_PASSWORD=true

  In production you will want to set more we used the following

      MYSQL_ROOT_PASSWORD=<root password>
      MYSQL_DATABASE=<database name>
      MYSQL_USER=<username>
      MYSQL_PASSWORD=<user password>

  In your .env.web you will want to set your timezone for example I have set mine to the US Eastern.

      TZ=America/New_York

## Running

Set up a Docker Machine and then run:

$ docker-compose up

## Setup Databases
Run the following commands to setup your database.

* Database import


## Running Bash on a container
docker exec -it web /bin/bash

## Viewing your page
on your host open your browser connect to localhost:8080. There are already index.php with the a hello world example. Also if you run test.php it will show you your php info on the server. Opening db.php will test yoour database connectivity with the MYSQL container.
