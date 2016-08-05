class UserMailer < ActionMailer::Base
  default from: "david@operationcode.org"

  def welcome(veteran)
    @veteran = veteran
    mail to: @veteran.email, subject: "Welcome to Operation Code!"
  end

end
