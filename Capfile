require 'capistrano-deploy'
use_recipes :git, :bundle, :rails

server 'vps.dev', :web, :app, :db, :primary => true

set :user, 'maw'
set :repository, 'https://github.com/javierg/maw.git'
set :deploy_to, '/srv/maw'

after 'deploy:update', 'bundle:install'
