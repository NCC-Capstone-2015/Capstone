class UsersController < AuthenticationController
  def index
    @users = User.all
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
    @user = User.find(params[:id])
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
