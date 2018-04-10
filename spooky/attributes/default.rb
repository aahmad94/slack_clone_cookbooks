
default['ruby-ng']['ruby_version'] = "2.4"
default['nodejs']['version'] = "6.10.1"
default['nodejs']['npm']['version'] = "5.2.0"
default['nginx']['default_site_enabled'] = false

default[:slack_clone][:git_repository] = "https://github.com/aahmad94/wookiee/"
default[:slack_clone][:git_revision] = "master"
default[:slack_clone][:path] = "/opt/slack_clone"

default[:slack_clone][:rails_env] = "production"
default[:slack_clone][:log_to_stdout] = "true"

default[:slack_clone][:environment] = {
  "SECRET_KEY_BASE": node[:slack_clone][:secret_key_base],
  "DATABASE_URL": node[:slack_clone][:database_url],
  "RAILS_ENV": node[:slack_clone][:rails_env],
  "RAILS_LOG_TO_STDOUT": node[:slack_clone][:log_to_stdout]
}

default[:slack_clone][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"
