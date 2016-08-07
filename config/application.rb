require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Linx
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #
    #
    #
    #
    #
    #
    config.generators do |g|
      g.orm             :active_record
      g.template_engine :erb
      g.test_framework  :rspec, :fixture => true, :view_specs => false, :controller_specs => false, :helper_specs => false, :routing_specs => false, :integration_tool => false
      g.fixture_replacement :fabrication, :dir => "spec/fabricators"
      g.helper false
      g.stylesheets false
      g.assets false
      g.jbuilder false
    end
  end
end
