class ApplicationController < ActionController::Base
  force_ssl if: :ssl_configured?

  protect_from_forgery with: :exception

  def ssl_configured?
    !Rails.env.production?
    !Rails.env.test?
  end

  def after_sign_in_path_for(_resource)
    profile_path
  end

  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:first_name, :last_name, :email, :password, :password_confirmation, :zip, :service_branch)
    end
  end
end
