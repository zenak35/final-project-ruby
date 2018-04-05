class Playlist < ApplicationRecord
  belongs_to :user
  has_many :songs

  def created_at_formatted
    created_at.in_time_zone('EST').strftime('%b %e, %Y at %l:%M%p')
  end
end
