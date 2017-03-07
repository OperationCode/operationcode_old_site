# frozen_string_literal: true
class ApplicationController < ActionController::Base
  force_ssl if: :ssl_configured?

  protect_from_forgery with: :exception

  helper_method :user_operating_system

  def user_operating_system
    if user_agent_check('mac')
      :mac
    elsif user_agent_check('windows')
      :windows
    elsif user_agent_check('ubuntu')
      :ubuntu
    elsif user_agent_check('fedora')
      :fedora
    end
  end

  def user_agent_check(os)
    request.env['HTTP_USER_AGENT'].downcase.match(/#{os}/i)
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
