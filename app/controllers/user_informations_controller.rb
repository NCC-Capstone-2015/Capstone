# Author: Craig Sterling
# Date: 5/20/2015
class UserInformationsController < AuthenticationController
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

    change = false
    login = Login.find(current_login.id)

    if params["first_name"].present?
      change = true
      login.update(first_name: params["first_name"])
    end
    if params["last_name"].present?
      change = true
      login.update(last_name: params["last_name"])
    end
    if params["middle_initial"].present?
      change = true
      login.update(middle_initial: params["middle_initial"])
    end
    if params["email"].present?
      change = true
      login.update(email: params["email"])
    end
    if params["street"].present?
      change = true
      login.user.update(street: params["street"])
    end
    if params["city"].present?
      change = true
      login.user.update(city: params["city"])
    end
    if params["state"].present?
      change = true
      login.user.update(state: params["state"])
    end
    if params["zip"].present?
      change = true
      login.user.update(zip: params["zip"])
    end
    if params["status"].present?
      change = true
      login.user.update(status: convert_user_status_to_number(params["status"]))
    end
    if params["spouse_last_name"].present?
      change = true
      login.user.update(spouse_last_name: params["spouse_last_name"])
    end
    if params["spouse_first_name"].present?
      change = true
      login.user.update(spouse_first_name: params["spouse_first_name"])
    end
    if params["spouse_middle_initial"].present?
      change = true
      login.user.update(spouse_middle_initial: params["spouse_middle_initial"])
    end
    if params["number_children"].present?
      change = true
      login.user.update(number_children: params["number_children"])
    end
    if params["birth_day"].present?
      change = true
      login.user.update(birth_day: Date.parse(params["birth_day"]).strftime("%Y-%m-%d"))
    end
    if params["ethnicity"].present?
      change = true
      login.user.update(ethnicity: params["ethnicity"])
    end
    if params["general_opt_in"].present?
      change = true
      login.user.update(general_opt_in: params["general_opt_in"])
    end
    if params["email_opt_in"].present?
      change = true
      login.user.update(email_opt_in: params["email_opt_in"])
    end
    if params["phone_opt_in"].present?
      change = true
      login.user.update(phone_opt_in: params["phone_opt_in"])
    end
    if params["badges_opt_in"].present?
      change = true
      login.user.update(badges_opt_in: params["badges_opt_in"])
    end
    if params["salary_range"].present?
      change = true
      login.user.update(salary_range: convert_salary_range_to_number(params["salary_range"]))
    end
    if params["job_title"].present?
      change = true
      login.user.update(job_title: params["job_title"])
    end
    if params["start_date"].present?
      change = true
      login.user.update(start_date: Date.parse(params["start_date"]).strftime("%Y-%m-%d"))
    end
    if params["end_date"].present?
      change = true
      login.user.update(end_date: Date.parse(params["end_date"]).strftime("%Y-%m-%d"))
    end

    if change
      redirect_to :action => "show", :id => :id
    end

  end

  # DELETE /user_informations/1
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_information
      @login = Login.find(current_login.id)
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
