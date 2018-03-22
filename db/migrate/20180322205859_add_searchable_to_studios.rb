class AddSearchableToStudios < ActiveRecord::Migration[5.1]
  def change
    add_column :studios, :searchable, :text
  end
end
