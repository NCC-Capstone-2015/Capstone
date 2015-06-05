# Author: Craig Sterling
# Date: 5/20/2015
class UserInformationsController < ApplicationController
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

    flash[:notice] = convert_user_status_to_numbers(params[:status])

    @login = Login.find(params[:id])
    @login.first_name = params[:first_name]
    @login.middle_initial = params[:middle_initial]
    @login.email = params[:email]
    @login.user.street = params[:street]
    @login.user.city = params[:city]
    @login.user.state = params[:state]
    @login.user.zip = params[:zip]
#    @login.user.status = convert_user_status_to_numbers(params[:status])
    @login.user.spouse_last_name = params[:spouse_last_name]
    @login.user.spouse_first_name = params[:spouse_first_name]
    @login.user.spouse_middle_initial = params[:spouse_middle_initial]
    @login.user.number_children = params[:number_children]
#    @login.user.birth_day = params[:birth_day]
    @login.user.ethnicity = params[:ethnicity]
#    @login.user.general_opt_in = params[:zip]
#    @login.user.email_opt_in = params[:zip]
#    @login.user.phone_opt_in = params[:zip]
#    @login.user.badges_opt_in = params[:zip]
#    @login.user.status = params[:zip]
#    @login.user.salary_range = params[:zip]
    @login.user.job_title = params[:job_title]
#    @login.user.start_date = params[:start_date]
#    @login.user.end_date = params[:end_date]
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
    end

    # Never trust parameters from the scary internet,
    # only allow the white list through.
    def user_information_params
      params[:user_information]
    end

    # Method to convert status from words to a number
    def convert_user_status_to_numbers (status_text)

      if status_text == "Student"
        status_num = 0
      elsif status_text == "Alumni"
        status_num = 1
      end
    end

end
