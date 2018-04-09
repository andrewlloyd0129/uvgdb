class Person < ApplicationRecord
  acts_as_votable

  has_many :gamples
  has_many :games, :through => :gamples
end