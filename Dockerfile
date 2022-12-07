FROM php:8.1.2-apache

WORKDIR /home/web
ADD src/public_html /home/web/public_html

RUN docker-php-ext-install mysqli pdo pdo_mysql

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    vim \
    git

# Update apache site for our custom location 
COPY ./config/000-default.conf /etc/apache2/sites-available/

EXPOSE 80

ADD ./scripts/entrypoint.sh /usr/bin/
RUN chmod -v +x /usr/bin/entrypoint.sh

# Start the service
ENTRYPOINT ["bash", "/usr/bin/entrypoint.sh"]