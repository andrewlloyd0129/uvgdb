class Platform < ApplicationRecord
  validates_presence_of :name, :brand, :release_date
end
