json.array!(@users) do |user|
  json.extract! user, :id, :current_ip
  json.url user_url(user, format: :json)
end
