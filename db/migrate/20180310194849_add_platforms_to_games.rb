class AddPlatformsToGames < ActiveRecord::Migration[5.1]
  def change
    add_reference :games, :platforms, foreign_key: true
  end
end
