require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
# raise Rails.groups.inspect
Bundler.require(*Rails.groups)

module ProjectAmazing
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # don't generate RSpec tests for views and helpers
    config.generators do |g|
      g.test_framework :rspec
      g.view_specs false
      g.helper_specs false
    end
  end
end
