# frozen_string_literal: true
class ProfileController < ApplicationController
  before_action :authenticate_veteran!

  def home
    @mentor = @current_veteran.mentor
  end

  def mentees
    redirect_to :profile unless @current_veteran.mentor?
    @your_mentees = @current_veteran.mentees
    @unclaimed_mentees = Veteran.unclaimed_mentees
  end
end
