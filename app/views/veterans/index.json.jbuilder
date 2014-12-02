json.array!(@veterans) do |veteran|
  json.extract! veteran, :id
  json.url veteran_url(veteran, format: :json)
end
