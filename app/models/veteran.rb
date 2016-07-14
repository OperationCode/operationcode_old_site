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
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  EMAIL_REGEX = /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
  validates :email, format: { with: EMAIL_REGEX,
                              message: 'Please provide a valid e-mail address' }

  attr_accessor :request_mentor

  geocoded_by :zip
  after_validation :geocode, if: ->(v) { v.zip.present? && v.zip_changed? }

  def self.lat_longs
    Veteran.where.not(zip: nil).pluck('DISTINCT latitude, longitude')
  end

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

  def send_mentor_request
    message = "A new user (#{first_name} #{last_name} <#{email}>) has requested a mentor."
    SlackNotifierJob.perform_later(message, channel: 'mentors')
  end

  def add_to_mailchimp
    MailchimpInviterJob.perform_later(
      email: email, first_name: first_name, last_name: last_name
    )
  end

  def mentor?
    false
  end
end
