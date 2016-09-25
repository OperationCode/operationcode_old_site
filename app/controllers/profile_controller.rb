# frozen_string_literal: true
class ProfileController < ApplicationController
  before_action :authenticate_veteran!

  def home
    @mentor = @current_veteran.mentor
  end

  def edit_bio
  end

  def update_bio
    if @current_veteran.update_attributes(bio: bio_param)
      redirect_to profile_path(@current_veteran)
    else
      render :edit_bio
    end
  end

  def mentees
    redirect_to :profile unless @current_veteran.mentor?
    @your_mentees = @current_veteran.mentees
    @unclaimed_mentees = Veteran.unclaimed_mentees
  end

  private

  def bio_param
    case @current_veteran
    when Mentor then params['mentor']['bio']
    else params['veteran']['bio']
    end
  end
end
