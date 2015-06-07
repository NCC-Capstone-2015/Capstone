# James Maher
class SearchesController < AuthenticationController
  # GET /searches
  # GET /searches.json
  def index
    @display_results = false
    # only display results if there are params
    if !(params[:q].blank?)
      @display_results = true
    end
    @q = Login.ransack params[:q]
    @searches = @q.result
    @q.build_condition if @q.conditions.empty?
    @saved_lists = Login.find(current_login.id).saved_lists.all
  end
  def search
    index
    render :index
  end
end