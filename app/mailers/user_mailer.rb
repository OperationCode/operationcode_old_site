class UserMailer < ActionMailer::Base
  default from: "admin@operationcode.org"
  
  def welcome(user)
    @user = user
    mail to: user.email, subject: "Welcome to OperationCode"
  end
  
end
