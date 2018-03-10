class Platform < ApplicationRecord
  validates_presence_of :name, :brand, :release_date

  # has_and_belongs_to_many :platforms
end
