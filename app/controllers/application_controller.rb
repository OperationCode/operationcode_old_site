# frozen_string_literal: true
class ApplicationController < ActionController::Base
  force_ssl if: :ssl_configured?

  protect_from_forgery with: :exception

  helper_method :get_operating_system

  def get_operating_system
    if request.env['HTTP_USER_AGENT'].downcase.match(/mac/i)
      'Mac'
    elsif request.env['HTTP_USER_AGENT'].downcase.match(/windows/i)
      'Windows'
    elsif request.env['HTTP_USER_AGENT'].downcase.match(/linux/i)
      'Linux'
    elsif request.env['HTTP_USER_AGENT'].downcase.match(/unix/i)
      'Unix'
    else
      'Unknown'
    end
  end

  def ssl_configured?
    !Rails.env.production?
    !Rails.env.test?
  end

  def after_sign_in_path_for(_resource)
    profile_path
  end

  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: [:first_name, :last_name, :email, :password, :password_confirmation, :zip, :service_branch]
    )
  end

  before_filter :set_current_veteran
  def set_current_veteran
    @current_veteran = current_veteran
  end
end
