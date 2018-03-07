class CreateStudios < ActiveRecord::Migration[5.1]
  def change
    create_table :studios do |t|
      t.string :title
      t.string :location

      t.timestamps
    end
  end
end
