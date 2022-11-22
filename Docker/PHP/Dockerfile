
FROM php:fpm

#install curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install nodejs  -y 
RUN node -v

WORKDIR /usr/composer/
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=/usr/bin --filename=composer
RUN php -r "unlink('composer-setup.php');"

RUN apt-get update && apt-get install -y libzip-dev && docker-php-ext-install zip

RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli pdo pdo_mysql

WORKDIR /var/www/html/

EXPOSE 9000