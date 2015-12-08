json.array!(@statuses) do |status|
  json.extract! status, :id, :name, :space_status, :hours
  json.url status_url(status, format: :json)
end
