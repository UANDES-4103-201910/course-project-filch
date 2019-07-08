json.extract! geofence, :id, :name, :address, :latitud, :longitud, :created_at, :updated_at
json.url geofence_url(geofence, format: :json)
