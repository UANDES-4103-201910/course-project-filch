json.extract! rant, :id, :user_id, :geofence_id, :title, :description, :like, :unlike, :status, :inapropiate, :visibility, :created_at, :updated_at
json.url rant_url(rant, format: :json)
