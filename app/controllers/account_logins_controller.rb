class AccountLoginsController < ApplicationController
  before_action :set_account_login, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_login!

  # GET /account_logins
  # GET /account_logins.json
  def index
    @account_logins = AccountLogin.all
  end

  # GET /account_logins/1
  # GET /account_logins/1.json
  def show
  end

  # GET /account_logins/new
  def new
    @account_login = AccountLogin.new
  end

  # GET /account_logins/1/edit
  def edit
  end

  # POST /account_logins
  # POST /account_logins.json
  def create
    @account_login = AccountLogin.new(account_login_params)

    respond_to do |format|
      if @account_login.save
        format.html { redirect_to @account_login, notice: 'Account login was successfully created.' }
        format.json { render :show, status: :created, location: @account_login }
      else
        format.html { render :new }
        format.json { render json: @account_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_logins/1
  # PATCH/PUT /account_logins/1.json
  def update
    respond_to do |format|
      if @account_login.update(account_login_params)
        format.html { redirect_to @account_login, notice: 'Account login was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_login }
      else
        format.html { render :edit }
        format.json { render json: @account_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_logins/1
  # DELETE /account_logins/1.json
  def destroy
    @account_login.destroy
    respond_to do |format|
      format.html { redirect_to account_logins_url, notice: 'Account login was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_login
      @account_login = AccountLogin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_login_params
      params[:account_login]
    end
end
