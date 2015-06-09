#Created by Ryan and Andrew
#Prevents access unless logged in as user
class UserAuthController < AuthenticationController
  before_filter :authorized?

  private
  def authorized?
    unless current_login.login_type == 2
      flash[:error] = "unauthorized access: page not accessable by admins"
       redirect_to root_path
    end
  end
end
