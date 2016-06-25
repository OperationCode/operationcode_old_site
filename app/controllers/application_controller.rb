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
end
