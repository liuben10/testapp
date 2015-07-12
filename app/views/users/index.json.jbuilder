json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :age, :rating, :bio
  json.url user_url(user, format: :json)
end
