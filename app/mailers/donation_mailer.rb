class DonationMailer < ActionMailer::Base
  default from: "david@operationcode.org"

  def thankyou(donator)
    @donator = donator
    mail to: @donator.email, subject: "Thank you for donating to Operation Code!"
  end
end
