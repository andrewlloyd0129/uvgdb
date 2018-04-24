class CreateUserGameStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :user_game_statuses do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :status

      t.timestamps
    end
    add_index :user_game_statuses, [:user_id, :game_id]
  end
end
