class ApplicationController < ActionController::Base
  require 'rspotify'
  before_action :authenticate_user!


  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :user_name])
  end
end
