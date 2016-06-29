module Veterans
  class RegistrationsController < Devise::RegistrationsController
    before_action :set_mentor_types

    def new
      super
    end

    def edit
      @veteran = current_veteran
      super
    end

    def create
      @veteran = Veteran.new(veteran_params)
      if @veteran.save
        send_notifications
        redirect_to :root, notice: 'Thanks for signing up! Please check your email to log in.'
      else
        render :new
      end
    end

    private

    # TODO: move this to the veteran (mentor?) model
    def set_mentor_types
      @mentor_types = %w(Ruby/Rails Javascript Mobile Not\ Sure)
    end

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

    def send_notifications
      UserMailer.welcome(@veteran).deliver_now
      @veteran.send_slack_invitation
      @veteran.send_mentor_request unless veteran_params[:request_mentor].blank?
      @veteran.add_to_mailchimp
    end

    # Disables requiring a password to edit your profile
    def update_resource(resource, params)
      resource.update_without_password(params)
    end

    def after_update_path_for(_resource)
      profile_path
    end
  end
end
