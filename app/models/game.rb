class Game < ApplicationRecord

  acts_as_votable
  validates_presence_of :release, :title, :description


  has_many :gamplats
  has_many :platforms, through: :gamplats

  accepts_nested_attributes_for :gamplats, 
                                allow_destroy: true,
                              reject_if: lambda { |attrs| attrs['platform_id'].blank? }
end
