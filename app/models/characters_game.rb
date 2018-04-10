class CharactersGame < ApplicationRecord
  has_many :characters
  has_many :games
end
