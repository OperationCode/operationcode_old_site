class VeteransController < ApplicationController
  before_action :set_veteran, only: [:show, :update, :destroy]
  before_action :authenticate_veteran!, only: [:profile]

  def index
    @veterans = Veteran.all
  end

  def show
  end

  def profile
    @veteran = current_veteran
  end

  def edit
  end

  def update
    if @veteran.update(veteran_params)
      redirect_to @veteran, notice: 'Veteran was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @veteran.destroy
    redirect_to veterans_url, notice: 'Veteran was successfully destroyed.'
  end

  def map
    @lat_longs = Veteran.lat_longs
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_veteran
    @veteran = Veteran.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def veteran_params
    params.require(:veteran).permit(
      :first_name,
      :last_name,
      :email,
      :zip,
      :service_branch,
      :request_mentor,
      :password,
      :password_confirmation
    )
  end
end
