class CreatePlatforms < ActiveRecord::Migration[5.1]
  def change
    create_table :platforms do |t|
      t.string :name
      t.date :release_date
      t.string :brand

      t.timestamps
    end
  end
end
