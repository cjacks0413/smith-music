json.array!(@performances) do |performance|
  json.extract! performance, :id
  json.url performance_url(performance, format: :json)
end
