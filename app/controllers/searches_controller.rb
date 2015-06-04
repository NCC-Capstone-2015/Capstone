# James Maher
class SearchesController < AuthenticationController
  # GET /searches
  # GET /searches.json
  def index
    @q = Login.ransack(params[:q])
    @searches = @q.result
    @q.build_condition if @q.conditions.empty?
  end
  def search
    index
    render :index
  end
end