# James Maher
class SearchesController < AuthenticationController
  # GET /searches
  # GET /searches.json
  def index
    # if there are no params, don't display results
    if params[:q].blank?
      @q = Login.none.ransack
    else # there are params, so display results
      @q = Login.ransack params[:q]
    end
    @searches = @q.result
    @q.build_condition if @q.conditions.empty?
  end
  def search
    index
    render :index
  end
end
