class Billboard < ApplicationRecord
  has_many :artists, dependent: :destroy

  validates :genre, :description, presence: true
  validates :description, length: { in: 10...50 }
end
