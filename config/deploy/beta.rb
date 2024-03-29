
# The directory that we're deploying to on the remote host.
set :deploy_to, "/var/www/domains/votaro.beta.westarete.com"

# Tell capistrano to use the beta environment. This is key for running 
# the database migrations via "cap staging deploy:migrations".
set :rails_env, "beta"

# The hosts that we're deploying to.
role :app, "beta.westarete.com"
role :web, "beta.westarete.com"
role :db,  "beta.westarete.com", :primary => true
