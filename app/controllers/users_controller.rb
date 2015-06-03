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
    @user.destroy

    redirect_to users_path
  end

  def create
    @login = Login.new()
    @login.first_name = params["first_name"]
    @login.last_name = params["last_name"]
    @login.password = params["password"]
    @login.middle_initial = params["middle_initial"]
    @login.login_type = params["login_type"]
    @login.username = params["username"]
    @login.sign_in_count = 0
    @login.email = params["email"]
    if @login.save
      redirect_to users_path
    else
      render 'new'
    end

    @user = User.new()
    @user.login_id = @login.id
    @user.email_addr = params["username"]


    @user_phone = UserPhone.new()
    @user_phone.user_id = @user.id
    if @user.save

    else
      render 'new'
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
