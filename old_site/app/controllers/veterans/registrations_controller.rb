module Veterans
  class RegistrationsController < Devise::RegistrationsController
    def edit
      @veteran = current_veteran
      super
    end

    def create
      @veteran = Veteran.new(veteran_params)
      @veteran.password = Devise.friendly_token.first(16)
      if @veteran.save
        send_notifications
        sign_in @veteran
        ab_finished(:signup_button_size)
        redirect_to :profile, notice: 'Thanks for signing up!'
      else
        render :new
      end
    end

    private

    def veteran_params
      params.require(:veteran).permit(:email, :zip)
    end

    def send_notifications
      # We're going to 'reset' a users password when they sign up.
      # This will send them a link to set their password and our welcome email
      @veteran.send_reset_password_instructions
      @veteran.send_slack_invitation
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
