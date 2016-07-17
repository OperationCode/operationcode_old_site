# frozen_string_literal: true
class ProfileController < ApplicationController
  before_action :authenticate_veteran!, :set_vetearn

  def home
    @mentor = @current_veteran.mentor
  end

  def mentees
    redirect_to :profile unless @veteran.mentor?
    @your_mentees = @current_veteran.mentees
    @unclaimed_mentees = Veteran.unclaimed_mentees
  end

  private

  def set_vetearn
    @current_vetearn = current_veteran
    @veteran = current_veteran
  end
end
