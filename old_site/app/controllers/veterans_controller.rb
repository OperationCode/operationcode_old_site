class VeteransController < ApplicationController
  before_action :authenticate_veteran!, except: [:map]

  def map
    @lat_longs = Veteran.lat_longs
  end

  def claim
    redirect_to :profile unless current_veteran.mentor?

    veteran = Veteran.find(params[:veteran])
    redirect_to(:back) if veteran.nil?

    veteran.update_attributes(mentor: current_veteran)
    redirect_to(:back)
  end

  def unclaim
    redirect_to :profile unless current_veteran.mentor?

    veteran = Veteran.find(params[:veteran])
    redirect_to(:back) if veteran.nil?

    veteran.update_attributes(mentor: nil)
    redirect_to(:back)
  end

  private

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
