require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    
    console do
      ActiveRecord::Base.connection
    end
    
    config.autoload_paths += %W(#{config.root}/lib)

  end

Rails.application.configure do
  # Enables npm_pipeline_rails's invocation of `watch` commands. (v1.5.0+)
  # If `true`, watch commands will be ran alongside Rails's server.
  # Defaults to true in development.
  config.npm.enable_watch = Rails.env.development?

  # Command to install dependencies
  config.npm.install = ['npm install']

  # Command to build production assets
  config.npm.build = ['npm run build']

  # Command to start a file watcher
  config.npm.watch = ['npm run start']

  # The commands are arrays; you may add more commands as needed:
  config.npm.watch = [
    'npm run webpack:start',
    'npm run brunch:start'
  ]

  # If 'true', runs 'npm install' on 'rake assets:precompile'. (v1.6.0+)
  # If you disable this, you'll need to run `npm install` yourself.
  # This is generally desired, but you may set this to false when
  # deploying to Heroku to speed things up.
  config.npm.install_on_asset_precompile = true

  # If 'true', runs 'npm install' on 'rails server'. (v1.7.0+)
  # If you disable this, you'll need to run `npm install` yourself.
  config.npm.install_on_rails_server = true
end


end
