# Author: Craig Sterling
# Date: 5/20/2015
class UserInformationsController < AuthenticationController
  helper_method :convert_opt_in, :convert_user_status, :concatenate_phone,
                :convert_phone_type, :get_photo_path
  before_action :set_user_information, only: [:show, :edit, :update, :destroy]

  # GET /user_informations
  # GET /user_informations.json
  def index
    @user_informations = UserInformation.all
  end

  # GET /user_informations/1
  # GET /user_informations/1.json
  def show

	end

  # GET /user_informations/new
  def new
    @user_information = UserInformation.new
  end

  # GET /user_informations/1/edit
  def edit

  end

  # POST /user_informations
  # POST /user_informations.json
  def create
    @user_information = UserInformation.new(user_information_params)

    respond_to do |format|
      if @user_information.save
        format.html { redirect_to @user_information, notice: 'User information was successfully created.' }
        format.json { render :show, status: :created, location: @user_information }
      else
        format.html { render :new }
        format.json { render json: @user_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_informations/1
  # PATCH/PUT /user_informations/1.json
  def update
    respond_to do |format|
      if @user_information.update(user_information_params)
        format.html { redirect_to @user_information, notice: 'User information was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_information }
      else
        format.html { render :edit }
        format.json { render json: @user_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_informations/1
  # DELETE /user_informations/1.json
  def destroy
    @user_information.destroy
    respond_to do |format|
      format.html { redirect_to user_informations_url, notice: 'User information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_information
      @login = Login.find(params[:id])
      @user = User.find_by_login_id(@login.id)
      @user_phones = UserPhone.where(user_id: @user.id)
      @company = Company.find(@user.company_id)
      @company_info = CompanyInfo.find_by_company_id(@company.id)
    end

    # helper method to convert user.status from number stored in tables
    # to verbiage
    def convert_user_status (status)

      if status == 0
        status_description = "Enrolled"
      else
        status_description = "Alumni"
      end
    end

    # helper method to convert opt_in_values from number stored in tables
    # to verbiage
    def convert_opt_in (opt_in_value)
      if opt_in_value == 0
        opt_in_text = "No"
      else
        opt_in_text = "Yes"
      end
    end

    # helper method to concatenate the elements of the phone number into
    # a string
    def concatenate_phone (phone_country_code, phone_area_code,
                           phone_prefix, phone_suffix)
      phone_text = (phone_country_code + "." + phone_area_code + "." +
                   phone_prefix + "." + phone_suffix)
    end

    # helper method to convert phone_type from number stored in tables
    # to verbiage
    def convert_phone_type (phone_type)
      if phone_type == 0
        phone_type_text = "Home"
      elsif phone_type == 1
        phone_type_text = "Work"
      else phone_type == 2
        phone_type_text = "Mobile"
      end
    end

    # helper method to get phot_path if it exists,
    # otherwise get the default photo_path
    def get_photo_path (l_name, f_name)
      photo_file_name = l_name + "_" + f_name + ".png"
      photo_path_and_file_name = Rails.root.join "app", "assets", "images",
                                                                photo_file_name
      if (File.file?(photo_path_and_file_name))
        asset_name = "/assets/" + photo_file_name
      else
        asset_name = "/assets/placeholder-person.png"
      end
      return asset_name
    end

    # Never trust parameters from the scary internet,
    # only allow the white list through.
    def user_information_params
      params[:user_information]
    end
end
