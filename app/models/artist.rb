class Artist < ApplicationRecord
  belongs_to :billboard
  has_many :songs, dependent: :destroy

  validates :artist_name, :listener_count, presence: true
  validates :listener_count, numericality: true
end
