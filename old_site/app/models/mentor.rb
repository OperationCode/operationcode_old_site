# frozen_string_literal: true
class Mentor < Veteran
  has_many :mentees, class_name: :Veteran, foreign_key: :mentor_id

  def mentor?
    true
  end

  def profile_complete?
    email? && first_name? && last_name? && bio?
  end
end
