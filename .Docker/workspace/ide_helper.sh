#!/bin/bash

echo "start generate ide_helper"
composer require --dev barryvdh/laravel-ide-helper
composer require --dev doctrine/dbal
php artisan ide-helper:generate
php artisan ide-helper:model

###
# You can also scan a different directory, using the --dir option (relative from the base path)
###
# php artisan ide_helper:model --dir="path/to/Models"

echo "end"
