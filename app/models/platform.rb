class Platform < ApplicationRecord
  acts_as_votable
  validates_presence_of :name, :brand, :release_date
  has_many :gamplats
  has_many :games, through: :gamplats
end
