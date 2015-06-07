class SavedListsController < ApplicationController

  def index
    @saved_lists = Login.find(current_login.id).saved_lists.all
  end
  
  def show
    @saved_list = SavedList.find(params[:id])
    @user = User.find(SavedListUser.find(@saved_list.login_id).user_id)
    @login = Login.find(@user.login_id)
  end
end
