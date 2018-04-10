class CreateCharactersGames < ActiveRecord::Migration[5.1]
  def change
    create_table :characters_games do |t|
      t.integer :character_id
      t.integer :game_id

      t.timestamps
    end
    add_index :characters_games, [:character_id, :game_id]
  end
end
