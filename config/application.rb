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

end
