Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

if Rails.env == 'production'
  Rails.configuration.stripe = {
    publishable_key: ENV['PUBLISHABLE_KEY'],
    secret_key: ENV['SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: "pk_test_kEXxKxuhxawCvzKYqvTUYISf",
    secret_key: "sk_test_R1WXtEP4TH4V9wREojJ3nP17"
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
