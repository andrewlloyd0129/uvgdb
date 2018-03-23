class CreateGamples < ActiveRecord::Migration[5.1]
  def change
    create_table :gamples do |t|
      t.integer :game_id
      t.integer :people_id

      t.timestamps
    end
    add_index :gamples, [:game_id, :people_id]
  end
end
