class Studio < ApplicationRecord
  enum status: { draft: 0, published: 1}
  acts_as_votable
end
