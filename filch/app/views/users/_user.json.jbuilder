json.extract! user, :id, :name, :lastname, :geofence_id, :role, :uid, :provider, :sex, :bigraphy, :created_at, :updated_at
json.url user_url(user, format: :json)
