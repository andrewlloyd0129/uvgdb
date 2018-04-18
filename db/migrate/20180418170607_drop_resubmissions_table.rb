class DropResubmissionsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :resubmissions do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :email, null: false

      t.timestamps null: false
    end
  end
end
