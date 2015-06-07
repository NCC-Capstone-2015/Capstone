# James Maher
class BasicSearchesController < AuthenticationController
  # GET /basic_searches
  # GET /basic_searches.json
  def index
    @display_results = false
    # only display results if there are params
    if !(params[:q].blank?)
      @display_results = true
    end
    @q = Login.joins('LEFT OUTER JOIN users ON users.login_id = logins.id').where("users.general_opt_in = 1").ransack(params[:q])
    @searches = @q.result
  end
  def search
    index
    render :index
  end
end
