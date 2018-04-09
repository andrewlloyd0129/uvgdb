class CreateGameGallaries < ActiveRecord::Migration[5.1]
  def change
    create_table :game_gallaries do |t|
      t.string :title
      t.string :image
      t.string :info
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
