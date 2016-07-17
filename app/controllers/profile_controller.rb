class ProfileController < ApplicationController
  before_action :authenticate_veteran!, :set_vetearn

  def home
  end

  def mentees
    redirect_to :profile unless @veteran.mentor?
  end

  private

  def set_vetearn
    @current_vetearn = current_veteran
    @veteran = current_veteran
  end
end
