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
set :repository,  "git@github.com:scottmotte/believenutritionbar.com.git"
set :branch, "master"
set :deploy_via, :remote_cache

# =============================================================================
# SSH OPTIONS
# =============================================================================
default_run_options[:pty] = true
ssh_options[:paranoid] = false
ssh_options[:port] = 5000

namespace :deploy do
  task :install_gems_on_server do
    sudo "sh -c 'cd #{latest_release} && ruby lib/install_gems.rb'"
  end
end


after 'deploy:update_code', 'deploy:install_gems_on_server', 'deploy:cleanup'