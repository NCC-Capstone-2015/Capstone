# Author: Craig Sterling
# Date: 5/20/2015
class UserInformationsController < UserAuthController
  before_action :set_user_information, only: [:show, :edit, :update, :destroy]

  # GET /user_informations
  def index

  end

  # GET /user_informations/1
  def show

	end

  # GET /user_informations/new
  def new

  end

  # GET /user_informations/1/edit
  def edit

  end

  # POST /user_informations
  def create

  end

  # PATCH/PUT /user_informations/1
  def update

    @login = Login.find(params[:id])
    @login.first_name = params[:first_name]
    @login.middle_initial = params[:middle_initial]
    @login.email = params[:email]
    @login.user.street = params[:street]
    @login.user.city = params[:city]
    @login.user.state = params[:state]
    @login.user.zip = params[:zip]
#    logger.debug "Status Text: #{params[:status]}"
    logger.debug "Status Number: #{convert_user_status_to_number(params[:status])}"
    @login.user.status = convert_user_status_to_number(params[:status])
    @login.user.spouse_last_name = params[:spouse_last_name]
    @login.user.spouse_first_name = params[:spouse_first_name]
    @login.user.spouse_middle_initial = params[:spouse_middle_initial]
    @login.user.number_children = params[:number_children]
    @login.user.birth_day = Date.parse(params[:birth_day]).strftime("%Y-%m-%d")
    @login.user.ethnicity = params[:ethnicity]
    @login.user.general_opt_in = params[:general_opt_in]
    @login.user.email_opt_in = params[:email_opt_in]
    @login.user.phone_opt_in = params[:phone_opt_in]
    @login.user.badges_opt_in = params[:badges_opt_in]
    @login.user.salary_range = convert_salary_range_to_number(params[:salary_range])
    @login.user.job_title = params[:job_title]
    @login.user.start_date = Date.parse(params[:start_date]).strftime("%Y-%m-%d")
    @login.user.end_date = Date.parse(params[:end_date]).strftime("%Y-%m-%d")
    @login.save
    @login.user.save

    redirect_to '/user_informations/' + @login.id.to_s

  end

  # DELETE /user_informations/1
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_information
      @login = Login.find(params[:id])
#      @phones = User.includes(:user_phones).where("user_phones.user_id", @login.user.id)
    end

    # Never trust parameters from the scary internet,
    # only allow the white list through.
    def user_information_params
      params[:user_information]
    end

    # Method to convert user.status from text to a number
    def convert_user_status_to_number (status_text)
      if status_text == "Student"
        status_num = 0
      elsif status_text == "Alumni"
        status_num = 1
      end
    end

    # Method to convert salary_range from words to a number
    def convert_salary_range_to_number (salary_range_text)
      if salary_range_text == "< $ 49,000"
        salary_range_num = 0
      elsif salary_range_text == "$ 50,000 to $ 99,000"
        salary_range_num = 1
      elsif salary_range_text == "$ 100,000 to $ 149,000"
        salary_range_num = 2
      elsif salary_range_text == "$ 150,000 to $ 199,000"
        salary_range_text_num = 3
      else salary_range_text == "> $ 200,000"
        salary_range_num = 4
      end
    end

end
