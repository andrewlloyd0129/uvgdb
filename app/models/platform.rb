class Platform < ApplicationRecord
  validates_presence_of :name, :brand, :release_date
  has_many :gamplats
  has_many :games, through: :gamplats
end
