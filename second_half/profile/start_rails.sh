#!/bin/sh


cd "../deploying_rails/hello_world"
script="script/rails server" 

export RAILS_ENV=production


opts="--profile.flat"
jruby --server $opts $script 
