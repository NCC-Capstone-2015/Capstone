class ReportsController < AuthenticationController
  skip_before_filter :verify_authenticity_token, :only => :create

  def index
  end

  def display
    @report_type = report_params

    case @report_type
    when "date"

    when "grad_class"

    when "grad_program"

    when "employer"

    when "taken_surveys"

    when "given_back"

    when "survey_completion"

    when "survey_results"

    when "user_survey_response"

    else
      redirect_to reports_path
    end
  end

  def options
    # Get parameters in order to render correct form
    @report_type = report_params
    @surveys = Survey.all

    if @report_type.nil?
      redirect_to reports_path
    end

    # Get array of saved lists to populate dropdown from collection
    # @saved_list_array = Login.find(session[:id]).saved_lists.all
    @saved_list_array = Login.find(1).saved_lists.all
  end

  def show
    @report_type = report_params
  end

  def edit
    report_options = {}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report_type = params[:report_type]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_params
      params[:report_type]
    end
end
