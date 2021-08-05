FROM php:8.0.7-fpm-alpine

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Instalar o Laravel Installer
RUN composer global require laravel/installer

# Criar um volume dentro do container e vincular com um diretório da máquina para exportar o novo projeto laravel
#VOLUME /home/madson/Documentos/projeto-laravel/ /var/www/

# Definir o diretório de trabalho
WORKDIR /var/www/

