# frozen_string_literal: true
class MenteeMailer < ActionMailer::Base
  default from: 'contact@operationcode.org'

  def welcome(mentee:, mentor:)
    @mentee = mentee
    @mentor = mentor

    mail(
      to: @mentee.email,
      bcc: 'mentorship@operationcode.org',
      from: @mentor.email,
      subject: 'Operation Code Mentorship Program'
    )
  end
end
