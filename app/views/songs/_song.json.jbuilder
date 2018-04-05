json.extract! song, :id, :name, :artist_id, :genre_id, :date_released, :album_id, :created_at, :updated_at
json.url song_url(song, format: :json)
