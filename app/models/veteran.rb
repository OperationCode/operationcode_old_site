# frozen_string_literal: true
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
  belongs_to :mentor

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  EMAIL_REGEX = /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
  validates :email, format: { with: EMAIL_REGEX, message: 'Please provide a valid e-mail address' }

  geocoded_by :zip
  after_validation :geocode, if: ->(v) { v.zip.present? && v.zip_changed? }
  attr_accessor :request_mentor

  def self.lat_longs
    Veteran.where.not(zip: nil).pluck('DISTINCT latitude, longitude')
  end

  def self.unclaimed_mentees
    Veteran.where(type: nil, mentor_id: nil, wants_mentor: true)
  end

  def name
    if first_name.present? || last_name.present?
      "#{first_name} #{last_name}".strip
    else
      email
    end
  end

  def send_slack_invitation
    SlackInviterJob.perform_later(email)
  end

  def add_to_mailchimp
    MailchimpInviterJob.perform_later(
      email: email, first_name: first_name, last_name: last_name
    )
  end

  def mentor?
    false
  end

  def welcome_from!(mentor)
    MenteeMailer.welcome(mentor: mentor, mentee: self).deliver_later
    update_attributes(welcomed: true, mentor: mentor)
  end
end
