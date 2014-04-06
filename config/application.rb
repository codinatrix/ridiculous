#encoding: utf-8
require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Ridiculous
  class Application < Rails::Application
    config.ridiculous_address = 'Norrgatan 15, 352 31 Växjö'
    config.ridiculous_lat = '56.87963'
    config.ridiculous_lon = '14.80671'
  end
end
