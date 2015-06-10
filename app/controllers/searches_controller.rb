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

    @search_array = Array.new
    @searches.each do |result|
      @search_array.push result
    end

    @saved_list_array = Login.find(current_login.id).saved_lists
  end
  def search
    index
    render :index
  end
end
