require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { url: OperationCode.fetch_secret_with(name: :redis_url) }
end

Sidekiq.configure_server do |config|
  config.redis = { url: OperationCode.fetch_secret_with(name: :redis_url) }
end
