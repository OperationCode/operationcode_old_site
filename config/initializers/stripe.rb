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
    publishable_key: "pk_live_bqebTTza5PGXJcAAaivllE03",
    secret_key: "sk_live_gEwdzs9804SZ6QEgZv8BbAXY"
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
