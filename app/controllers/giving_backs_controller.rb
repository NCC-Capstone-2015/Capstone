#written by Matthew Kachlik
class GivingBacksController < ApplicationController
  before_action :set_giving_back, only: [:show, :edit, :update, :destroy]

  # GET /giving_backs
  # GET /giving_backs.json
  def index
    @giving_backs = GivingBack.all
  end

  # GET /giving_backs/1
  # GET /giving_backs/1.json
  def show
  end

  # GET /giving_backs/new
  def new
    @giving_back = GivingBack.new
  end

  def edit
  end
  #changes uncompleted giving back to completed
  def completed

    @giving_back = GivingBack.find(params[:id])
    @giving_back.completed = true
    respond_to do |format|
      if @giving_back.save
        format.html { redirect_to @giving_back, notice: 'Giving back was completed.' }
      end
    end
  end
  #changes the boolean to true on approve
  def approve

    @giving_back = GivingBack.find(params[:id])
    @giving_back.approved = true
    @giving_back.save
    respond_to do |format|
      if @giving_back.save
        format.html { redirect_to @giving_back, notice: 'Giving back was approved.' }
      end
    end
  end
  # POST /giving_backs
  # POST /giving_backs.json
  def create
    @giving_back = GivingBack.new(giving_back_params)
    @giving_back.approved = false
    @giving_back.completed = false
    @giving_back.user_id = current_login.id

    respond_to do |format|
      if @giving_back.save
        format.html { redirect_to @giving_back, notice: 'Giving back was successfully created.' }
        format.json { render :show, status: :created, location: @giving_back }
      else
        format.html { render :new }
        format.json { render json: @giving_back.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /giving_backs/1
  # PATCH/PUT /giving_backs/1.json
  def update
    respond_to do |format|
      if @giving_back.update(giving_back_params)
        format.html { redirect_to @giving_back, notice: 'Giving back was successfully updated.' }
        format.json { render :show, status: :ok, location: @giving_back }
      else
        format.html { render :edit }
        format.json { render json: @giving_back.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /giving_backs/1
  # DELETE /giving_backs/1.json
  def destroy
    @giving_back.destroy
    respond_to do |format|
      format.html { redirect_to giving_backs_url, notice: 'Giving back was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_giving_back
      @giving_back = GivingBack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def giving_back_params
      params.require(:giving_back).permit(:user_id, :company_info_id, :subject, :position, :description, :requirements, :approved, :completed, :giving_back_type, :contact_first_name, :contact_last_name, :contact_email)
    end
end
