class Game < ApplicationRecord
  validates_presence_of :release, :title, :description

  belongs_to_and_has_many :platforms
end
