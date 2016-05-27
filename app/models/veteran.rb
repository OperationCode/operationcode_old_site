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
    message = "A new user (#{first_name} #{last_name} <#{email}>) "\
      "has requested a mentor in the following area: #{request_mentor}"
    SlackNotifierJob.perform_now(message, channel: 'mentors')
  end

  def add_to_mailchimp
    gibbon = Gibbon::Request.new(api_key: ENV['MAILCHIMP_API_KEY'])

    gibbon.lists(ENV['MAILCHIMP_LIST_ID']).members.create(
      body: {
        email_address: email,
        status: 'subscribed',
        merge_fields: { FNAME: first_name, LNAME: last_name }
      }
    )
  end
end
