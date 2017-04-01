Rails.configuration.stripe = {
  :publishable_key => OperationCode.fetch_secret_with(name: :stripe_publishable_key),
  :secret_key      => OperationCode.fetch_secret_with(name: :stripe_secret_key)
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

if Rails.env == 'production'
  Rails.configuration.stripe = {
    publishable_key: OperationCode.fetch_secret_with(name: :stripe_publishable_key),
    secret_key:      OperationCode.fetch_secret_with(name: :stripe_secret_key)
  }
else
  Rails.configuration.stripe = {
    publishable_key: "pk_test_kEXxKxuhxawCvzKYqvTUYISf",
    secret_key: "sk_test_R1WXtEP4TH4V9wREojJ3nP17"
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
