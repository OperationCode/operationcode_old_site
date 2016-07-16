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

  def press
  end

  def privacy
  end

  def scholarships
  end

  def speakerrequest
  end

  def successes
  end

  def fellowships
  end
end
