Split::Dashboard.use Rack::Auth::Basic do |username, password|
  username == 'test' && password == 'test'
end