class CreateResubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :resubmissions do |t|
      t.string :title
      t.text :description
      t.string :email

      t.timestamps
    end
  end
end
