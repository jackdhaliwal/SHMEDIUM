class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter :mailer_set_url_options
  
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end
  
  def mailer_set_url_options
    ActionMailer::Base.default_url_options[:host] = request.host_with_port
  end
  
end
