class SavedListsController < ApplicationController

  def index
    @saved_lists = Login.find(current_login.id).saved_lists.all
  end
  
  def show
    @saved_list = SavedList.find(params[:id])
  end
end
