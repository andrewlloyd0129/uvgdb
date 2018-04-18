class CreateResubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :resubmissions do |t|
      t.string :title
      t.string :link
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
