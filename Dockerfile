# Use php:7.0-apache as base image to build on it.
FROM php:7.0-apache
# Execute commands
RUN apt-get update && apt-get install -y libpng-dev && docker-php-ext-install gd mbstring opcache pdo pdo_mysql && a2enmod rewrite

# Set the current working directory to which commands are executed relatively
WORKDIR /var/www/html

