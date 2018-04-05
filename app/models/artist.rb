class Artist < ApplicationRecord
  belongs_to :playlist, optional: true
  has_many :albums, dependent: :destroy
  has_many :songs, dependent: :destroy

  
end
