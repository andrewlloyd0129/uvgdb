class CreateGamples < ActiveRecord::Migration[5.1]
  def change
    create_table :gamples do |t|
      t.integer :game_id
      t.integer :person_id
      t.string :role
      t.string :link

      t.timestamps
    end
    add_index :gamples, [:game_id, :person_id]
  end
end
