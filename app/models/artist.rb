class Artist < ApplicationRecord
  has_many :songs
  has_many :photos

  validates :name, presence: true
end
