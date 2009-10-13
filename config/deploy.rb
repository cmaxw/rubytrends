set :application, "topiclinker.com"
set :repository,  "git@github.com:woody2shoes/rubytrends.git"

set :deploy_to, "/var/www/trends"
set :user, "root"

set :scm, :git
set :deploy_via, :remote_cache
set :use_sudo, false

role :web, "#{application}"                          # Your HTTP server, Apache/etc
role :app, "#{application}"                          # This may be the same as your `Web` server
role :db,  "#{application}", :primary => true # This is where Rails migrations will run

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

after :deploy, "gems:install"
after "gems:install", "deploy:migrate"
before :deploy, "daemons:stop"
after "deploy:migrate", "daemons:start"

namespace :daemons do
  task :start do
    run "cd #{deploy_to}/current && script/daemons start"
  end

  task :stop do
    run "cd #{deploy_to}/current && script/daemons stop"
  end
end

namespace :gems do
  task :install do
    run "cd #{deploy_to}/current && RAILS_ENV=production rake gems:install"
  end
end

namespace :deploy do
  task :change_permissions do
    run "chown -R www-data #{deploy_to}"
  end
  task :start do
    run "/etc/init.d/apache2 start"
  end
  task :stop do
    run "/etc/init.d/apache2 stop"
  end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end