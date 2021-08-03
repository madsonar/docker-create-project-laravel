FROM php:8.0.7-fpm-alpine

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer