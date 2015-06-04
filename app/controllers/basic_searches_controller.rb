# James Maher
class BasicSearchesController < AuthenticationController
  # GET /basic_searches
  # GET /basic_searches.json
  def index
    if params[:q].blank?
      @q = Login.none.ransack
    else
      @q = Login.ransack params[:q]
    end
    @searches = @q.result
  end
  def search
    index
    render :index
  end
end