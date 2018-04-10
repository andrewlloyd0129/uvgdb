class GameGallary < ApplicationRecord
  belongs_to :game

    mount_uploader :image, ImagesUploader

end
