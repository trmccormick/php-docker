FROM php:5-apache

WORKDIR /home/web
ADD src /home/web/

RUN docker-php-ext-install pdo pdo_mysql

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    vim \
    git

# Update apache site for our custom location 
COPY ./000-default.conf /etc/apache2/sites-available/

EXPOSE 80