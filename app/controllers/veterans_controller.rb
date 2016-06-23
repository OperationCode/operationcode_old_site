class VeteransController < ApplicationController
  before_action :set_veteran, only: [:show, :edit, :update, :destroy]
  before_action :set_mentor_types, only: [:new, :create]

  # GET /veterans
  # GET /veterans.json
  def index
    @veterans = Veteran.all
  end

  # GET /veterans/1
  # GET /veterans/1.json
  def show
  end

  # GET /veterans/new
  def new
    @veteran = Veteran.new
  end

  # GET /veterans/1/edit
  def edit
  end

  # POST /veterans
  # POST /veterans.json
  def create
    @veteran = Veteran.new(veteran_params)
    if @veteran.save
      send_notifications
      redirect_to action_path, notice: 'Thanks for signing up!'
    else
      render :new
    end
  end

  # PATCH/PUT /veterans/1
  # PATCH/PUT /veterans/1.json
  def update
    if @veteran.update(veteran_params)
      redirect_to @veteran, notice: 'Veteran was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /veterans/1
  # DELETE /veterans/1.json
  def destroy
    @veteran.destroy
    redirect_to veterans_url, notice: 'Veteran was successfully destroyed.'
  end

  private

  def send_to_home
    redirect_to action_path
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_veteran
    @veteran = Veteran.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def veteran_params
    params.require(:veteran).permit(:first_name, :last_name, :email, :zip, :service_branch, :request_mentor)
  end

  def set_mentor_types
    @mentor_types = %w(Ruby/Rails Javascript Mobile Not\ Sure)
  end

  def send_notifications
    UserMailer.welcome(@veteran).deliver_now
    @veteran.send_slack_invitation
    @veteran.send_mentor_request unless veteran_params[:request_mentor].blank?
    @veteran.add_to_mailchimp
  end
end
