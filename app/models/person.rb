class Person < ApplicationRecord
  enum status: { draft: 0, published: 1}
  acts_as_votable

  has_many :gamples
  has_many :games, :through => :gamples
end