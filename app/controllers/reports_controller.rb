require 'csv'

class ReportsController < ApplicationController
  #skip_before_filter :verify_authenticity_token, :only => :create

  def index
  end

  def display
    @report_type = report_params

    case @report_type
    when "date"
      @month = params[:selected_date][:month]
      @year = params[:selected_date][:year]
      @user_status = params[:user_status]
      @selected_saved_list = params[:selected_saved_list]

      if @selected_saved_list == ""
        if @user_status == -1
          if !@month.nil? && !@year.nil?
            @results = User.all.where('extract(year from created_at) = ? and extract(month from created_at) = ?', @year, @month)
          else @month.nil?
            @results = User.all.where('extract(year from created_at) = ?', @year)
          end
        else
          if !@month.nil? && !@year.nil?
            @results = User.all.where('extract(year from created_at) = ? and extract(month from created_at) = ? and status = ?', @year, @month, @user_status)
          else @month.nil?
            @results = User.all.where('extract(year from created_at) = ? and status = ?', @year, @user_status)
          end
        end
      else
        if @user_status == -1
          if !@month.nil? && !@year.nil?
            @results = Login.find(current_user).saved_lists.find(@selected_saved_list).saved_list_users.where('extract(year from created_at) = ? and extract(month from created_at) = ?', @year, @month)
          else @month.nil?
            @results = Login.find(1).saved_lists.find(@selected_saved_list).saved_list_users.where('extract(year from created_at) = ?', @year)
          end
        else
          if !@month.nil? && !@year.nil?
            @results = Login.find(1).saved_lists.find(@selected_saved_list).saved_list_users.where('extract(year from created_at) = ? and extract(month from created_at) = ? and status = ?', @year, @month, @user_status)
          else @month.nil?
            @results = Login.find(1).saved_lists.find(@selected_saved_list).saved_list_users.where('extract(year from created_at) = ? and status = ?', @year, @user_status)
          end
        end
      end

    when "grad_class"


    when "grad_program"

    when "employer"

    when "given_back"

    when "survey_completion"

    when "survey_results"

    when "user_survey_response"

    else
      redirect_to reports_path
    end

    respond_to do |format|
      format.html
      format.csv
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
    @saved_list_array = Login.find(1).saved_lists.all
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
