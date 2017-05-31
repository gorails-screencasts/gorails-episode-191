json.extract! user, :id, :settings, :preferences, :created_at, :updated_at
json.url user_url(user, format: :json)
