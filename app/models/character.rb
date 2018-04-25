class Character < ApplicationRecord
  enum status: { draft: 0, published: 1}
  acts_as_votable

  has_many :characters_games
  has_many :games, through: :characters_games
end
