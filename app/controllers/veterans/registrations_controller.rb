class Veterans::RegistrationsController < Devise::RegistrationsController
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]
  before_action :set_mentor_types, only: [:new, :create]

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    @veteran = Veteran.new(veteran_params)
    if @veteran.save
      send_notifications
      redirect_to @veteran
   else
     render :new
   end
  end

  private

  def set_mentor_types
    @mentor_types = %w(Ruby/Rails Javascript Mobile Not\ Sure)
  end

  def veteran_params
    params.require(:veteran).permit(:first_name, :last_name, :email, :zip, :service_branch, :request_mentor, :password, :password_confirmation)
  end

  def send_notifications
    UserMailer.welcome(@veteran).deliver_now
    @veteran.send_slack_invitation
    @veteran.send_mentor_request unless veteran_params[:request_mentor].blank?
    @veteran.add_to_mailchimp
  end
end
