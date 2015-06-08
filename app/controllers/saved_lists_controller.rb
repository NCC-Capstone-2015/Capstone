# James Maher and Andrew Bockus
class SavedListsController < ApplicationController

  def index
    @saved_lists = Login.find(current_login.id).saved_lists.all
  end

  def show
    @saved_list = SavedList.find(params[:id])
    @user = User.find(SavedListUser.find(@saved_list.login_id).user_id)
    @login = Login.find(@user.login_id)
  end

  def new
    @saved_list = SavedList.new
    @saved_list_array = SavedList.find(current_login.id).saved_lists.all
  end

  def create
    @users_array = params[:saved_list_array]
    @saved_list = SavedList.new

    @users_array.each do |user|
      @saved_list.saved_list_user.new
      @saved_list.saved_list_user.user_id = user.id
    end
  end

  # Delete user method
  def delete_user(user_id, list_id)
    @user_to_delete = SavedList.find(list_id).saved_list_user.find(user_id)
    SavedListUser.destroy(@user.user_id)
  end

  # Delete saved list method
  def delete
    @saved_list = SavedList.find(params[:id])
    @saved_list.destroy
  end
end
