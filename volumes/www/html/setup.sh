#!/bin/sh

npm install

composer install

npm run build

chmod 777 -R ./*

php artisan key:generate

php artisan config:cache

php artisan migrate

php-fpm


