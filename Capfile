require 'capistrano-deploy'
use_recipes :git, :bundle, :rails

server 'vps.dev', :web, :app, :db, :primary => true
set :user, 'root'
set :password, '1um1n47g'
set :deploy_to, '/srv/maw/'
set :repository, '.'
set :deploy_via, :copy

after 'deploy:update', 'bundle:install'
