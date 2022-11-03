# config valid for current version and patch releases of Capistrano
lock "~> 3.17.1"

set :application, "spree3_runner"
set :repo_url, "git@github.com:wasya-co/spree3_runner.git"
set :ssh_options, { :forward_agent => true }
set :branch, ENV['BRANCH'] if ENV['BRANCH']

append :linked_files, "config/database.yml", "config/secrets.yml"

set :deploy_via, :remote_cache

set :deploy_to, "/home/ubuntu/projects/spree3_runner"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "tmp/webpacker", "public/system", "vendor", "storage"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }
