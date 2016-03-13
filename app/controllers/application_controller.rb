class ApplicationController < ActionController::Base
  force_ssl if: :ssl_configured?

  protect_from_forgery with: :exception

  def ssl_configured?
    !Rails.env.production?
    !Rails.env.test?
  end
end
