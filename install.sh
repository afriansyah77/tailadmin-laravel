#!/bin/bash

npm install
npm run prod
composer install --prefer-dist --no-scripts --no-dev --optimize-autoloader
cp .env.example .env
php artisan key:generate
php artisan migrate
php artisan db:seed
php artisan storage:link
