# Created by Andrew Bockus
# Report queries by Cornelius Donley
class ReportsController < AdminAuthController
  skip_before_filter :verify_authenticity_token, :only => :create

require 'csv'

  def index
  end

  def display
    respond_to do |format|
      format.html
        @report_type = report_params
        case @report_type
        when "date" # Stores all users who were entered into the system during a certain month / year into the @results variable
          @month = params[:selected_date][:month]
          @year = params[:selected_date][:year]
          @user_status = params[:user_status]
          @selected_saved_list = params[:selected_saved_list]
          if @selected_saved_list.blank? #No list selected
            if @user_status == '-1' #All students
              if @month.blank? #All months, Selected Year
                @results = Login.all.where('login_type = 2 and extract(year from created_at) = ?', @year)
              else #Selected Month and Year
                @results = Login.all.where('login_type = 2 and extract(year from created_at) = ? and extract(month from created_at) = ?', @year, @month)
              end
            elsif @user_status == '0' #Student
              if @month.blank? #All months, Selected Year
                @logins = Login.all.where('login_type = 2 and extract(year from created_at) = ?', @year)
              else #Selected Month and Year
                @logins = Login.all.where('login_type = 2 and extract(year from created_at) = ? and extract(month from created_at) = ?', @year, @month)
              end
              login_array = Array.new
              @logins.each do |l|
                l.user.status == 0 ? (login_array.push l) : 0
              end
              @results = login_array
            elsif @user_status == '1' #Alumni
              if @month.blank? #All months, Selected Year
                @logins = Login.all.where('login_type = 2 and extract(year from created_at) = ?', @year)
              else #Selected Month and Year
                @logins = Login.all.where('login_type = 2 and extract(year from created_at) = ? and extract(month from created_at) = ?', @year, @month)
              end
              login_array = Array.new
              @logins.each do |l|
                l.user.status == 1 ? (login_array.push l) : 0
              end
              @results = login_array
            end
          else #Only users in the selected Saved List
            @list = SavedList.find(@selected_saved_list)
            if @user_status == '-1' #All students
              if @month.blank? #All months, Selected Year
                @users = @list.users.all.where('extract(year from users.created_at) = ?', @year)
              else #Selected Month and Year
                @users = @list.users.all.where('extract(year from users.created_at) = ? and extract(month from users.created_at) = ?', @year, @month)
              end
            elsif @user_status == '0' #Student
              if @month.blank? #All months, Selected Year
                @users = @list.users.where("status = '0' and extract(year from users.created_at) = ?", @year)
              else #Selected Month and Year
                @users = @list.users.where("status = '0' and extract(year from users.created_at) = ? and extract(month from users.created_at) = ?", @year, @month)
              end
            elsif @user_status == '1' #Alumni
              if @month.blank? #All months, Selected Year
                @users = @list.users.where("status = '1' and extract(year from users.created_at) = ?", @year)
              else #Selected Month and Year
                @users = @list.users.where("status = '1' and extract(year from users.created_at) = ? and extract(month from users.created_at) = ?", @year, @month)
              end
            end
            login_array = Array.new
            @users.each do |u|
              login_array.push u.login
            end
            @results = login_array
          end

        when "grad_class" # Stores all users who graduate in a specific year into the @results variable
          @grad_year = params[:grad_year][:year]
          @user_status = params[:user_status]
          @selected_saved_list = params[:selected_saved_list]
          if @selected_saved_list.blank? #No list selected
            if @user_status == '-1' #Include Both Students and Alumni
              @users = User.where('extract(year from end_date) = ?', @grad_year)
            elsif @user_status == '0' #Include Only Students
              @users = User.where("status = '0' and extract(year from end_date) = ?", @grad_year)
            elsif @user_status == '1' #Include Only Alumni
              @users = User.where("status = '1' and extract(year from end_date) = ?", @grad_year)
            end
          else #Only users in the selected Saved List
            @list = SavedList.find(@selected_saved_list)
            if @user_status == '-1' #Include Both Students and Alumni
              @users = @list.users.where('extract(year from end_date) = ?', @grad_year)
            elsif @user_status == '0' #Include Only Students
              @users = @list.users.where("status = '0' and extract(year from end_date) = ?", @grad_year)
            elsif @user_status == '1' #Include Only Alumni
              @users = @list.users.where("status = '1' and extract(year from end_date) = ?", @grad_year)
            end
          end
          login_array = Array.new
          @users.each do |u|
            login_array.push u.login
          end
          @results = login_array

        when "grad_program" #Displays users enrolled int he specified degree program
          @selected_program = params[:selected_program]
          @user_status = params[:user_status]
          @selected_saved_list = params[:selected_saved_list]
          if @selected_saved_list.blank? #No list selected
            if @user_status == '-1' #Include Both Students and Alumni
              @users = User.where('program = ?', @selected_program)
            elsif @user_status == '0' #Include Only Students
              @users = User.where("status = '0' and program = ?", @selected_program)
            elsif @user_status == '1' #Include Only Alumni
              @users = User.where("status = '1' and program = ?", @selected_program)
            end
          else #Only users in the selected Saved List
            @list = SavedList.find(@selected_saved_list)
            if @user_status == '-1' #Include Both Students and Alumni
              @users = @list.users.where('program = ?', @selected_program)
            elsif @user_status == '0' #Include Only Students
              @users = @list.users.where("status = '0' and program = ?", @selected_program)
            elsif @user_status == '1' #Include Only Alumni
              @users = @list.users.where("status = '1' and program = ?", @selected_program)
            end
          end
          login_array = Array.new
          @users.each do |u|
            login_array.push u.login
          end
          @results = login_array

        when "employer" #Diplays users who work at the specified employer
          @selected_employer = params[:selected_employer]
          @user_status = params[:user_status]
          @selected_saved_list = params[:selected_saved_list]
          company_array = Company.where('company_name = ?', @selected_employer)
          company = company_array.first
          user_array = User.all
          @users = Array.new
          if @selected_saved_list.blank? #No list selected
            if @user_status == '-1' #Include Both Students and Alumni
              user_array.each do |u|
                if u.company_info_id != nil
                  if u.company_info.company.company_name == @selected_employer
                    @users.push u
                  end
                end
              end
            elsif @user_status == '0' #Include Only Students
              user_array.each do |u|
                if u.company_info_id != nil
                  if u.company_info.company.company_name == @selected_employer && u.status == 0
                    @users.push u
                  end
                end
              end
            elsif @user_status == '1' #Include Only Alumni
              user_array.each do |u|
                if u.company_info_id != nil
                  if u.company_info.company.company_name == @selected_employer && u.status == 1
                    @users.push u
                  end
                end
              end
            end
          else #Only users in the selected Saved List
            @list = SavedList.find(@selected_saved_list)
            if @user_status == '-1' #Include Both Students and Alumni
              @list.users.each do |u|
                if u.company_info_id != nil
                  if u.company_info.company.company_name == @selected_employer
                    @users.push u
                  end
                end
              end
            elsif @user_status == '0' #Include Only Students
              @list.users.each do |u|
                if u.company_info_id != nil
                  if u.company_info.company.company_name == @selected_employer  && u.status == 0
                    @users.push u
                  end
                end
              end
            elsif @user_status == '1' #Include Only Alumni
              @list.users.each do |u|
                if u.company_info_id != nil
                  if u.company_info.company.company_name == @selected_employer && u.status == 1
                    @users.push u
                  end
                end
              end
            end
          end
          login_array = Array.new
          @users.each do |u|
            login_array.push u.login
          end
          @results = login_array

        when "given_back"
          @selected_giving_back = params[:selected_giving_back]
          @user_status = params[:user_status]
          @selected_saved_list = params[:selected_saved_list]
          user_array = Array.new.uniq
          if @selected_saved_list.blank?
            giving_back_array = GivingBack.all
            if @user_status == '-1' #Include Both Students and Alumni
              if @selected_giving_back != '-1'
                giving_back_array = GivingBack.where('giving_back_type = ?', @selected_giving_back)
              end
              giving_back_array.each do |gb|
                user_array.push gb.user
              end
              @users = user_array
            elsif @user_status == '0' #Include Only Students
              if @selected_giving_back != '-1'
                giving_back_array = GivingBack.where('giving_back_type = ?', @selected_giving_back)
              end
              giving_back_array.each do |gb|
                gb.user.status == 0 ? (user_array.push gb.user) : 0
              end
              @users = user_array
            elsif @user_status == '1' #Includ Only Alumni
              if @selected_giving_back != '-1'
                giving_back_array = GivingBack.where('giving_back_type = ?', @selected_giving_back)
              end
              giving_back_array.each do |gb|
                gb.user.status == 1 ? (user_array.push gb.user) : 0
              end
              @users = user_array
            end
          else #Only users in the selected Saved List
            @list = SavedList.find(@selected_saved_list)
            giving_back_array = Array.new
            if @user_status == '-1' #Include Both Students and Alumni
              if @selected_giving_back != '-1'
                @list.users.each do |user|
                  user.giving_backs.each do |give|
                    if !give.nil?
                      if give.giving_back_type.to_s() == @selected_giving_back
                        giving_back_array.push give
                      end
                    end
                  end
                end
              else
                @list.users.each do |user|
                  user.giving_backs.each do |give|
                    give.nil? ? 1 : (giving_back_array.push give)
                  end
                end
              end
              giving_back_array.each do |gb|
                user_array.push gb.user
              end
              @users = user_array
            elsif @user_status == '0' #Include Only Students
              if @selected_giving_back != '-1'
                @list.users.each do |user|
                  if user.status == 0
                    user.giving_backs.each do |give|
                      if !give.nil?
                        if give.giving_back_type.to_s() == @selected_giving_back
                          giving_back_array.push give
                        end
                      end
                    end
                  end
                end
              else
                @list.users.each do |user|
                  if user.status == 0
                    user.giving_backs.each do |give|
                      give.nil? ? 1 : (giving_back_array.push give)
                    end
                  end
                end
              end
              giving_back_array.each do |gb|
                user_array.push gb.user
              end
              @users = user_array
            elsif @user_status == '1' #Includ Only Alumni
              if @selected_giving_back != '-1'
                @list.users.each do |user|
                  if user.status == 1
                    user.giving_backs.each do |give|
                      if !give.nil?
                        if give.giving_back_type.to_s() == @selected_giving_back
                          giving_back_array.push give
                        end
                      end
                    end
                  end
                end
              else
                @list.users.each do |user|
                  if user.status == 1
                    user.giving_backs.each do |give|
                      give.nil? ? 1 : (giving_back_array.push give)
                    end
                  end
                end
              end
              giving_back_array.each do |gb|
                user_array.push gb.user
              end
              @users = user_array
            end
          end
          login_array = Array.new
          @users.each do |u|
            login_array.push u.login
          end
          @results = login_array

        # when "survey_results"
        #
        # when "user_survey_response"

        else
          redirect_to reports_path
        end

        # Query used for testing purposes
        #   Comment out the switch statement above and uncomment this line
        #   to show all users and their information
        #@results = Login.all.where("login_type = ?", 2)

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
    #Removes duplicate programs
    #By Cornelius Donley
    elsif @report_type == "grad_program"
      u_array = User.all
      p_array = Array.new.uniq
      u_array.each do |u|
        p_array.push u.program
      end
      @program_array = p_array
    #Removes duplicate employers
    #By Cornelius Donley
    elsif @report_type == 'employer'
      c_array = Company.all
      e_array = Array.new.uniq
      c_array.each do |c|
        e_array.push c.company_name
      end
      @employer_array = e_array
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
