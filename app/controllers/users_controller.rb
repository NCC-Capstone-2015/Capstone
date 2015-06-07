class UsersController < AuthenticationController
  def index
    @users = User.all
  end
  def redirect
    redirect_to users_path
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @login = Login.new()
    @login.first_name = params[:first_name]
    @login.last_name = params[:last_name]
    @login.password = params[:password]
    @login.middle_initial = params[:middle_initial]
    @login.login_type = params[:login_type]
    @login.username = params[:user_name]
    @login.save()

    @user = User.new()
    @user.login_id = @login.id

    @user_phone = UserPhone.new()
    @user_phone.user_id = @user.id
  end

  def edit
    change = false
    user = User.find(params[:id])
    if not params["first_name"].nil? and !params["first_name"].blank?
      change = true
      user.login.update(first_name: params["first_name"])
    end
    if not params["last_name"].nil? and !params["last_name"].blank?
      change = true
      user.login.update(last_name: params["last_name"])
    end
    if not params["password"].nil? and !params["password"].blank?
      change = true
      user.login.update(password: params["password"])
    end
    if not params["middle_initial"].nil? and !params["middle_initial"].blank?
      change = true
      user.login.update(middle_initial: params["middle_initial"])
    end
    if not params["login_type"].nil? and !params["login_type"].blank?
      change = true
      user.login.update(login_type: params["login_type"].to_i)
    end
    if not params["username"].nil? and !params["username"].blank?
      change = true
      user.login.update(username: params["username"])
    end
    if not params["email"].nil? and !params["email"].blank?
      change = true
      user.login.update(email: params["email"])
    end
    if not params["login_type"].nil? and !params["login_type"].blank?
      change = true
      user.login.update(login_type: params["login_type"])
    end
    #@user.login.update(updated_at: DateTime.now)

    if not params["program"].nil? and !params["program"].blank?
      change = true
      user.update(program: params["program"])
    end
    if not params["status"].nil? and !params["status"].blank?
      change = true
      user.update(status: params["status"])
    end
    if change
      redirect_to users_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.login.destroy

    redirect_to users_path
  end

  def create
    @login = Login.new()
    @login.first_name = params["first_name"]
    @login.last_name = params["last_name"]
    @login.password = params["password"]
    @login.middle_initial = params["middle_initial"]
    @login.login_type = params["login_type"].to_i
    @login.username = params["username"]
    @login.email = params["email"]
    @login.created_at = DateTime.now
    @login.updated_at = DateTime.now
    @login.last_sign_in_at = DateTime.now
    @login.sign_in_count = 0



    if @login.save!
      if params["login_type"].to_i == 2
      #only make a user profile if they are not a worker
        @user = User.new()
        @user.login_id = @login.id
        @user.program = params["program"]
        @user.status = params["status"]
        if @user.save!
          @user_phone = UserPhone.new()
          @user_phone.country_code = params["country_code"]
          @user_phone.area_code = params["area_code"]
          @user_phone.prefix = params["prefix"]
          @user_phone.suffix = params["suffix"]
          @user_phone.user_id = @user.id
          @user_phone.user_phone_type = 1
          if @user_phone.save!
            redirect_to users_path
          else
            redirect_to new_users_path
          end
        else
          redirect_to new_user_path
        end
      else
        redirect_to users_path
      end
    else
      redirect_to user_path
    end


  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

#params[:fname] will get the post of fname

end
