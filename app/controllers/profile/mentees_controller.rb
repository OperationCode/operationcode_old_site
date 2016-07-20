# frozen_string_literal: true
module Profile
  class MenteesController < ApplicationController
    before_action :authenticate_veteran!, :set_mentee

    def show
    end

    private

    def set_mentee
      @mentee = Veteran.find(params[:mentee])
    end
  end
end
