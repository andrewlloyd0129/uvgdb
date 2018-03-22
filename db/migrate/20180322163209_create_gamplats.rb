class CreateGamplats < ActiveRecord::Migration[5.1]
  def change
    create_table :gamplats do |t|
      t.integer :game_id
      t.integer :platform_id

      t.timestamps
    end
    add_index :gamplats, [:game_id, :platform_id]
  end
end
