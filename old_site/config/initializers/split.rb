Split::Dashboard.use Rack::Auth::Basic do |username, password|
  username == OperationCode.fetch_secret_with(name: :split_username) && password == OperationCode.fetch_secret_with(name: :split_password)
end
