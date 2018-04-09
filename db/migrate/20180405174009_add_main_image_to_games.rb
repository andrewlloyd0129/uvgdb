class AddMainImageToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :main_image, :string
  end
end
