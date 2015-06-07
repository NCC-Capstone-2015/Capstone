class AdminSurveysController < AdminAuthController
  before_action :set_admin_survey, only: [:show, :edit, :update, :destroy]

  # GET /admin_surveys
  # GET /admin_surveys.json
  def index
    @admin_surveys = Survey.all
  end

  # GET /admin_surveys/1
  # GET /admin_surveys/1.json
  def show
  end

  # GET /admin_surveys/new
  def new
    @admin_survey = Survey.new
  end

  # GET /admin_surveys/survey_question
  def survey_question
    @admin_survey = Survey.new
  end

  def question_type

  end

  # GET /admin_surveys/1/edit
  def edit
    @admin_survey = Survey.find(params[:id])
    @question = SurveyQuestion.find(params[:survey_id]) rescue nil
  end

  # POST /admin_surveys
  # POST /admin_surveys.json
  def create
    @admin_survey = Survey.new(admin_survey_params)

    respond_to do |format|
      if @admin_survey.save
        format.html { redirect_to @admin_survey, notice: 'Admin survey was successfully created.' }
        format.json { render :show, status: :created, location: @admin_survey }
      else
        format.html { render :new }
        format.json { render json: @admin_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_surveys/1
  # PATCH/PUT /admin_surveys/1.json
  def update
    respond_to do |format|
      if @admin_survey.update(admin_survey_params)
        format.html { redirect_to @admin_survey, notice: 'Admin survey was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_survey }
      else
        format.html { render :edit }
        format.json { render json: @admin_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_surveys/1
  # DELETE /admin_surveys/1.json
  def destroy
    @admin_survey.destroy
    respond_to do |format|
      format.html { redirect_to admin_surveys_url, notice: 'Admin survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_survey
      @admin_survey = params[:survey]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_survey_params
      params[:survey]
    end
end
