# Created by Andrew Bockus and Cornelius Donley

class ReportsController < AdminAuthController
  skip_before_filter :verify_authenticity_token, :only => :create

require 'csv'

  def index
  end

  def display
    respond_to do |format|
      format.html
        @report_type = report_params
        # case @report_type
        # when "date" # Stores all users who were entered into the system during a certain month / year into the @results variable
        #   @month = params[:selected_date][:month]
        #   @year = params[:selected_date][:year]
        #   @user_status = params[:user_status]
        #   @selected_saved_list = params[:selected_saved_list]
        #
        #   if @selected_saved_list == ""
        #     if @user_status == -1
        #       if !@month.nil? && !@year.nil?
        #         @results = User.all.where('extract(year from created_at) = ? and extract(month from created_at) = ?', @year, @month)
        #       else @month.nil?
        #         @results = User.all.where('extract(year from created_at) = ?', @year)
        #       end
        #     else
        #       if !@month.nil? && !@year.nil?
        #         @results = User.all.where('extract(year from created_at) = ? and extract(month from created_at) = ? and status = ?', @year, @month, @user_status)
        #       else @month.nil?
        #         @results = User.all.where('extract(year from created_at) = ? and status = ?', @year, @user_status)
        #       end
        #     end
        #   else
        #     if @user_status == -1
        #       if !@month.nil? && !@year.nil?
        #         @results = Login.find(current_user).saved_lists.find(@selected_saved_list).saved_list_users.where('extract(year from created_at) = ? and extract(month from created_at) = ?', @year, @month)
        #       else @month.nil?
        #         @results = Login.find(1).saved_lists.find(@selected_saved_list).saved_list_users.where('extract(year from created_at) = ?', @year)
        #       end
        #     else
        #       if !@month.nil? && !@year.nil?
        #         @results = Login.find(1).saved_lists.find(@selected_saved_list).saved_list_users.where('extract(year from created_at) = ? and extract(month from created_at) = ? and status = ?', @year, @month, @user_status)
        #       else @month.nil?
        #         @results = Login.find(1).saved_lists.find(@selected_saved_list).saved_list_users.where('extract(year from created_at) = ? and status = ?', @year, @user_status)
        #       end
        #     end
        #   end
        #
        # when "grad_class" # Stores all users who graduate in a specific year into the @results variable
        #   @grad_year = params[:grad_year]
        #   @user_status = params[:user_status]
        #   @selected_saved_list = params[:selected_saved_list]
        #
        #   if @selected_saved_list == ""
        #     if @user_status == -1
        #       @results = User.undergraduate_degrees.all.where('extract(year from graduation_date) = ?', @grad_year)
        #     else
        #       @results = User.undergraduate_degrees.all.where('extract(year from graduation_date) = ? and status = ?', @grad_year, @user_status)
        #     end
        #   else
        #     if @user_status == -1
        #       @results = Login.find(current_user).saved_lists.find(@selected_saved_list).saved_list_users.undergraduate_degrees.all.where('extract(year from created_at) = ? and extract(month from created_at) = ?', @grad_year)
        #     else
        #       if !@month.nil? && !@year.nil?
        #         @results = Login.find(1).saved_lists.find(@selected_saved_list).saved_list_users.where('extract(year from created_at) = ? and extract(month from created_at) = ? and status = ?', @year, @month, @user_status)
        #       else @month.nil?
        #         @results = Login.find(1).saved_lists.find(@selected_saved_list).saved_list_users.where('extract(year from created_at) = ? and status = ?', @year, @user_status)
        #       end
        #     end
        #   end
        #
        # when "grad_program"
        #
        # when "employer"
        #
        # when "given_back"
        #
        # when "survey_completion"
        #
        # when "survey_results"
        #
        # when "user_survey_response"
        #
        # else
        #   redirect_to reports_path
        # end

        # Query used for testing purposes
        #   Comment out the switch statement above and uncomment this line
        #   to show all users and their information
        @results = Login.all.where("login_type = ?", 2)

        # Specify fields to hide when displaying information from login table
        @keys_blacklist = ['login_type', 'password', 'encrypted_password', 'reset_password_token', 'reset_password_sent_at', 'remember_created_at', 'current_sign_in_ip', 'last_sign_in_ip', 'middle_initial', 'last_login_timestamp']
        # Specify fields to hide when displaying information from user table
        @user_blacklist = ['login_id', 'company_id', 'id', 'created_at', 'updated_at', 'status']
        # Specify fields to hide when displaying information from degree tables
        @degree_blacklist = ['id', 'user_id', 'created_at', 'updated_at']
        # Specify fields to hide when displaying information from user phones table
        @phone_blacklist = ['created_at', 'updated_at', 'id', 'user_id']

      format.xls  {send_file(filename, filename:  '#{@report_type}_Report_' + Date.now + '.xls')  }
    end
  end

  def options
    # Get parameters in order to render correct form
    @report_type = report_params

    if @report_type == "survey_completion" || @report_type == "survey_results" || @report_type == "user_survey_response"
      @survey_array = Survey.all #.where('status = ?', 1)
    elsif @report_type == "grad_program"
      @grad_program_array = Degree.all
    elsif @report_type == ""
      redirect_to reports_path
    end

    # Get array of saved lists to populate dropdown from collection
    # @saved_list_array = Login.find(session[:id]).saved_lists.all
    @saved_list_array = Login.find(current_login.id).saved_lists.all
  end

  def show
    @report_type = report_params
  end

  def edit
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
