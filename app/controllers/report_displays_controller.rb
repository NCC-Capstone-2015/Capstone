class ReportDisplaysController < ApplicationController
  before_action :set_report_display, only: [:show, :edit, :update, :destroy]

  # GET /report_displays
  # GET /report_displays.json
  def index
    @report_displays = ReportDisplay.all
  end

  # GET /report_displays/1
  # GET /report_displays/1.json
  def show
  end

  # GET /report_displays/new
  def new
    @report_display = ReportDisplay.new
  end

  # GET /report_displays/1/edit
  def edit
  end

  # POST /report_displays
  # POST /report_displays.json
  def create
    @report_display = ReportDisplay.new(report_display_params)

    respond_to do |format|
      if @report_display.save
        format.html { redirect_to @report_display, notice: 'Report display was successfully created.' }
        format.json { render :show, status: :created, location: @report_display }
      else
        format.html { render :new }
        format.json { render json: @report_display.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /report_displays/1
  # PATCH/PUT /report_displays/1.json
  def update
    respond_to do |format|
      if @report_display.update(report_display_params)
        format.html { redirect_to @report_display, notice: 'Report display was successfully updated.' }
        format.json { render :show, status: :ok, location: @report_display }
      else
        format.html { render :edit }
        format.json { render json: @report_display.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_displays/1
  # DELETE /report_displays/1.json
  def destroy
    @report_display.destroy
    respond_to do |format|
      format.html { redirect_to report_displays_url, notice: 'Report display was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_display
      @report_display = ReportDisplay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_display_params
      params[:report_display]
    end
end
