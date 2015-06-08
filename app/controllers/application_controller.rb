class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  end

  protect_from_forgery with: :exception

 #added by Ryan and Andrew
 def after_sign_out_path_for(resource_or_scope)
   new_login_session_path
 end

  def current_user
    @current_user = Login.find(current_login.try(:id))
  end

 def can_administer?
   current_login.login_type == 1 || current_login.login_type == 0
  end

end
