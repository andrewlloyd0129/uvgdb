class Gamplat < ApplicationRecord
  validates_presence_of :platform_id, :game_id
end
