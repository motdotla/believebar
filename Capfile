load 'deploy' if respond_to?(:namespace) # cap2 differentiator

default_run_options[:pty] = true

role :app, "174.142.75.247"
role :web, "174.142.75.247"
role :db,  "174.142.75.247", :primary => true

set :user, 'scottmotte'
set :application, 'believenutritionbar.com'

set :deploy_to, "/home/scottmotte/believenutritionbar.com"
set :scm_verbose, true
set :use_sudo, false

set :scm, "git"
set :repository,  "git@github.com:ministrycentered/believenutritionbar.com.git"
set :branch, "master"
set :deploy_via, :remote_cache


# namespace :deploy do
#   task :restart do
#     run "touch #{current_path}/tmp/restart.txt" 
#   end
# end