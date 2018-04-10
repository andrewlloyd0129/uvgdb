class Character < ApplicationRecord
  acts_as_votable

  has_many :characters_games
  has_many :games, through: :characters_games
end
