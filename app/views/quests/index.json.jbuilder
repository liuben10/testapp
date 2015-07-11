json.array!(@quests) do |quest|
  json.extract! quest, :id, :name, :description, :rating
  json.url quest_url(quest, format: :json)
end
