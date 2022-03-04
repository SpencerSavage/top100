class Song < ApplicationRecord
  belongs_to :artist

  validates :title, :album, :song_length, presence: true
end
