class AddSearchableToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :searchable, :text
  end
end
