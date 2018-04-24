class CreateResubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :resubmissions do |t|
      t.string :title
      t.text :description
      t.string :type_class
      t.integer :type_id
      t.string :type_title
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
