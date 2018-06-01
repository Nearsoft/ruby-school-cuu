require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Meeho
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.i18n.default_locale = :'es-MX'

    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings   = {
        address:              ENV['EMAIL_ADDRESS'],
        port:                 ENV['EMAIL_PORT'],
        domain:               ENV['EMAIL_DOMAIN'],
        user_name:            ENV['EMAIL_USER_NAME'],
        password:             ENV['EMAIL_PASSWORD'],
        authentication:       ENV['EMAIL_AUTHENTICATION'],
        enable_starttls_auto: true 
      }
  end
end
