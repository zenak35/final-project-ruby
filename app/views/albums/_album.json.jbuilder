json.extract! album, :id, :name, :artist_id, :date_released, :created_at, :updated_at
json.url album_url(album, format: :json)
