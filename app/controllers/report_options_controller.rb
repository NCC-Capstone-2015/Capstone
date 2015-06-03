class ReportOptionsController < AuthenticationController
  before_action :set_report_option, only: [:show, :edit, :update, :destroy]

  # GET /report_options
  # GET /report_options.json
  def index
    @report_options = ReportOption.all
  end

  # GET /report_options/1
  # GET /report_options/1.json
  def show
  end

  # GET /report_options/new
  def new
    @report_option = ReportOption.new
  end

  # GET /report_options/1/edit
  def edit
  end

  # POST /report_options
  # POST /report_options.json
  def create
    @report_option = ReportOption.new(report_option_params)

    respond_to do |format|
      if @report_option.save
        format.html { redirect_to @report_option, notice: 'Report option was successfully created.' }
        format.json { render :show, status: :created, location: @report_option }
      else
        format.html { render :new }
        format.json { render json: @report_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /report_options/1
  # PATCH/PUT /report_options/1.json
  def update
    respond_to do |format|
      if @report_option.update(report_option_params)
        format.html { redirect_to @report_option, notice: 'Report option was successfully updated.' }
        format.json { render :show, status: :ok, location: @report_option }
      else
        format.html { render :edit }
        format.json { render json: @report_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_options/1
  # DELETE /report_options/1.json
  def destroy
    @report_option.destroy
    respond_to do |format|
      format.html { redirect_to report_options_url, notice: 'Report option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_option
      @report_option = ReportOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_option_params
      params[:report_option]
    end
end
