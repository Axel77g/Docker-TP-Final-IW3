#!/bin/sh

composer update

composer install

npm install

npm run build

chmod 777 -R ./*


# Check if APP_KEY is set in .env file 
var1=$(grep -e "^APP_KEY=" .env)
var2="APP_KEY="

if [ "$var1" = "$var2" ]; then
    php artisan key:generate
fi

php artisan config:cache

php artisan migrate

php-fpm


