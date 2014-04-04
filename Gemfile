source 'https://rubygems.org'
ruby "1.9.3"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.1'

gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Heroku necessities
gem 'rails_12factor', group: :production
gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'

# New Relic for monitoring and performance tracking
gem 'newrelic_rpm'

# Rollbar to check exceptions
gem 'rollbar'

# Performance enhancers
gem 'rack-timeout'
gem 'memcachier'
gem 'dalli'

# Use Unicorn on production
platforms :ruby do # linux
  gem 'unicorn'
end