require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Todo
  class Application < Rails::Application
    env_filename = File.exist?(Rails.root.join(".env.#{Rails.env}")) ? ".env.#{Rails.env}" : ".env"
    Dotenv.load Rails.root.join(env_filename)
  end
end
