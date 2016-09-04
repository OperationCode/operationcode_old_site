Split::Dashboard.use Rack::Auth::Basic do |username, password|
  username == ENV['SPLIT_USERNAME'] && password == ENV['SPLIT_PASSWORD']
end
