# == Schema Information
#
# Table name: veterans
#
#  id             :integer          not null, primary key
#  email          :string(255)
#  first_name     :string(255)
#  last_name      :string(255)
#  service_branch :string(255)
#  zip            :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Veteran < ActiveRecord::Base
  EMAIL_REGEX = /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
  validates :email, format: { with: EMAIL_REGEX,
                              message: 'Please provide a valid e-mail address' }

  def name
    if first_name.present? || last_name.present?
      "#{first_name} #{last_name}"
    else
      email
    end
  end

  def send_slack_invitation
    SlackInviterJob.perform_later(email)
  end
end
