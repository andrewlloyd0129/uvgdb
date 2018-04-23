class Game < ApplicationRecord
  enum status: { draft: 0, published: 1}

	has_many :game_gallaries

	accepts_nested_attributes_for :game_gallaries, 
                                allow_destroy: true,
																reject_if: lambda { |attrs| attrs['image'].blank? || attrs['title'].blank?}

  acts_as_votable
  validates_presence_of :release, :title, :description

  has_many :gamples
  has_many :people, :through => :gamples


  has_many :gamplats
  has_many :platforms, through: :gamplats

  has_many :characters_games
  has_many :characters, through: :characters_games

  mount_uploader :main_image, ImagesUploader

  accepts_nested_attributes_for :gamplats, 
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['platform_id'].blank? }


end