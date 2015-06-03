# James Maher
class BasicSearchesController < AuthenticationController

  # GET /basic_searches
  # GET /basic_searches.json
  def index
    @search = Login.search(params[:q])
    @searches = @search.result
  end
  def search
    index
    render :index
  end
end