source 'https://rubygems.org'
ruby '2.2.5'

gem 'sinatra'
gem 'puma'
gem 'json'
gem 'sequel'
gem 'rake'
gem 'tux'
gem 'jose'
gem 'http'
gem 'hirb'
gem 'rbnacl-libsodium'

group :development do
  gem 'rerun'
end

group :test do
  gem 'minitest'
  gem 'rack'
  gem 'rack-test'
end

group :development, :test do
  gem 'sqlite3'
  gem 'config_env'
end

group :production do
  gem 'pg'
end
