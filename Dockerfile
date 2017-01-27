# Webserver container for WVU Lib Engine API
# Using Centos:latest base image
# Version 1

FROM trmccormick/centos7-php
MAINTAINER Tracy McCormick <tracy.alan.mccormick@gmail.com>

# Update image
RUN yum -y update

# Add configuration file
ADD src /var/www/html
EXPOSE 80

# Start the service
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
