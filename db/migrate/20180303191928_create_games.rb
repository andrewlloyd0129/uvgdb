class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :title
      t.date :release
      t.text :description

      t.timestamps
    end
  end
end
