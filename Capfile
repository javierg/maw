require 'capistrano-deploy'
use_recipes :git, :bundle, :rails

server 'vps.dev', :web, :app, :db, :primary => true

set :user, 'maw'
set :repository, '.'
set :repository, '.'
set :deploy_to, '/srv/maw'
set :deploy_via, :copy

after 'deploy:update', 'bundle:install'
