require 'pathname'

class OperationCode
  def self.fetch_secret_with(name:)
    secret_path = Pathname.new(Rails.configuration.secret_path) + name.to_s
    File.read(secret_path).chomp
  end
end
