#!/bin/sh

npm install

composer install

npm run build

php artisan migrate:fresh --seed

chmod 777 -r ./*

php-fpm


