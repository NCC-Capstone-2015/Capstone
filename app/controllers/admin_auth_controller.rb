class AdminAuthController < AuthenticationController
  before_filter :authorized?

  private
  def authorized?
    unless current_login.login_type == 1 || current_login.login_type == 0
      flash[:error] = "unauthorized access: redirected to homepage"
       redirect_to root_path
    end
  end
end
