class Gample < ApplicationRecord
  belongs_to :games, optional: true
  belongs_to :people, optional: true
end
