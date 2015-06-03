class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #login authentication for every page added by Ryan and Andrew
  #before_filter :authenticate_login!


 #added by Ryan and Andrew
 def after_sign_out_path_for(resource_or_scope)
   new_login_session_path
 end

end
