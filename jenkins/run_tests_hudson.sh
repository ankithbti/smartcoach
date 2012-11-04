#!/bin/bash
source $HOME/.rvm/scripts/rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
rvm use 1.9.3
#cp config/database.yml.example config/database.yml
bundle install
rake db:migrate:reset
rake db:test:prepare
bundle exec rspec spec/requests/
#rake test:units
#rake spec:models