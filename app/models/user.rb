class User < ApplicationRecord
  has_many :songs
  has_many :playlists, dependent: :destroy
  has_many :albums
  has_many :artists

 validates :first_name, :last_name, presence: true
 validates :email, presence: true, uniqueness: true
 validate :first_name_capitalized, :last_name_capitalized, :correct_email

 private

  def first_name_capitalized
    errors.add(:first_name, 'must be capitalized') if first_name && first_name.capitalize!
  end

  def last_name_capitalized
    errors.add(:last_name, 'must be capitalized') if last_name && last_name.capitalize!
  end

  def correct_email
    errors.add(:email, "must have an '@' and a '.'") if email && (!email.include?('@') || !email.include?('.'))
  end
end
