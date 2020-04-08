require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_view/railtie'

Bundler.require(*Rails.groups)

module AmarketsTestTask
  class Application < Rails::Application
    config.load_defaults 6.0
    config.api_only = true

    config.generators do |g|
      g.test_framework :rspec, fixture_replacement: :factory_bot
      g.fixture false
      g.request_specs false
      g.controller_specs false
      g.routing_specs false
      g.factory_bot false
    end
  end
end
