load 'deploy' if respond_to?(:namespace) # cap2 differentiator

# =============================================================================
# ROLES
# =============================================================================
role :app, "174.142.75.247"
role :web, "174.142.75.247"
role :db,  "174.142.75.247", :primary => true

# =============================================================================
# SETUP
# =============================================================================
set :user, 'scottmotte'
set :application, 'believenutritionbar.com'

# =============================================================================
# DEPLOY TO
# =============================================================================
set :deploy_to, "/home/scottmotte/apps/believenutritionbar.com"
set :scm_verbose, true
set :use_sudo, false

# =============================================================================
# REPOSITORY
# =============================================================================
set :scm, "git"
set :repository,  "git@github.com:ministrycentered/believenutritionbar.com.git"
set :branch, "master"
set :deploy_via, :remote_cache

# =============================================================================
# SSH OPTIONS
# =============================================================================
default_run_options[:pty] = true
ssh_options[:paranoid] = false
ssh_options[:port] = 5000

# namespace :deploy do
#   task :restart do
#     run "touch #{current_path}/tmp/restart.txt" 
#   end
# end