class MenteeMailer < ActionMailer::Base
  default from: 'contact@operationcode.org'

  def welcome(mentee:, mentor:)
    @mentee = mentee
    @mentor = mentor

    mail to: @mentee.email, from: @mentor.email, subject: 'Operation Code Mentorship Program'
  end
end
