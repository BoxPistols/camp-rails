require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CampRails
  class Application < Rails::Application
    config.load_defaults 5.2
    config.generators do |g|
      g.stylesheets false   #styleシート
      g.javascripts false   #javascript
      g.helper false        　#ヘルパー
      g.test_framework false #テストファイル
    end
  end
end
