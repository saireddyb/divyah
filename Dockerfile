FROM php:7.4-apache

COPY . /var/www/html

RUN apt-get update && apt-get install -y \
    libicu-dev \
    libpq-dev \
    libxml2-dev \
    && docker-php-ext-install \
    intl \
    pdo_pgsql \
    soap \
    && a2enmod rewrite