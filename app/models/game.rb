class Game < ApplicationRecord
  validates_presence_of :release, :title, :description
end
