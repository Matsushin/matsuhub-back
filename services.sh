#!/bin/bash

chmod -R 777 /matsuhub-backend/tmp/cache
chmod -R 777 /matsuhub-backend/log
chmod -R 777 /matsuhub-backend/db/schema.rb
rm -rf /matsuhub-backend/tmp/pids/*

export DISABLE_SPRING=1
export RAILS_LOG_TO_STDOUT=1

bundle exec rails db:create
bundle exec rails db:migrate

bundle exec rails s -p 8080 -b '0.0.0.0'

