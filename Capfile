require 'capistrano-deploy'
use_recipes :git, :bundle, :rails, :passenger, :rails_assets

server 'vps.dev', :web, :app, :db, :primary => true

set :default_environment, {
  'PATH' => "$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
}

set :user, 'maw'
set :repository, 'git@github.com:javierg/maw.git'
set :deploy_to, '/srv/maw'

after 'deploy:update', 'bundle:install'
