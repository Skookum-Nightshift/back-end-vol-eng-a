require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module UploadBackend
  class Application < Rails::Application
    config.i18n.default_locale = :en
    config.i18n.available_locales = [:en]

    config.assets.enabled = true
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')

    config.middleware.use Rack::Deflater
    config.exceptions_app = self.routes

    # Deal with trailing slashes need rack-rewrite gem
    config.middleware.insert_before(Rack::Runtime, Rack::Rewrite) do
      r301 %r{^/(.*)/$}, '/$1'
    end

    # Propagate errors during ActiveRecord callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # GERTIG - Don't generate the javascript and css files with generators
    config.generators.stylesheets = false
    config.generators.javascripts = false

    # Make sure that custom validations get loaded
    config.autoload_paths += %W["#{config.root}/app/validators/"]

    # Make sure that custom validations get loaded
    config.autoload_paths += %W["#{config.root}/app/serializers/"]

    # CORS Cross-Origin
    config.middleware.insert_before 0, 'Rack::Cors' do
      allow do
        origins '*' # This opens up to every domain, be very careful
        resource '*',
          headers: :any,
          methods: [:get, :put, :post, :patch, :delete, :options]
      end
    end
  end
end
