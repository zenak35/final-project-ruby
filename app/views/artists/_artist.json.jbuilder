json.extract! artist, :id, :playlist_id, :name, :created_at, :updated_at
json.url artist_url(artist, format: :json)
