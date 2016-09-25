class PagesController < ApplicationController
  def about
  end

  def deploy
  end

  def board
  end

  def codeschools
  end

  def calendar
  end

  def contact
  end

  def sponsors
  end

  def events
  end

  def faq
    @faqs = YAML.load_file(Rails.root + 'config/faqs.yml')
  end

  def founder
  end

  def hackathons
  end

  def jgguide
  end

  def media
  end

  def mentorship
  end

  def mission
  end

  def newgibill
  end

  def online
  end

  def pipeline
  end

  def press
  end

  def privacy
  end

  def scholarships
  end

  def speakerrequest
  end

  def staff
  end

  def success_stories
  end

  def fellowships
  end

  def ssl
    render text: LetsEncrypt.key_for(params[:token])
  end
end
