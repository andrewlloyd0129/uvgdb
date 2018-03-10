class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :biography
      t.integer :age
      t.string :home_town
      t.string :first_appearence

      t.timestamps
    end
  end
end
