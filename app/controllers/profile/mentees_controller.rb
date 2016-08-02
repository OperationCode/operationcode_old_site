# frozen_string_literal: true
module Profile
  class MenteesController < ApplicationController
    before_action :authenticate_veteran!, :set_mentee

    def show
    end

    def welcome
      if @current_veteran.mentor?
        flash[:success] = 'Welcome email has been queued'
        @mentee.welcome_from! @current_veteran
      else
        Rails.logger.info "Current user (#{@current_veteran.id}) is not a mentor"
      end

      redirect_to profile_mentee_path(@mentee)
    end

    private

    def set_mentee
      @mentee = Veteran.find(params[:mentee])
    end
  end
end
