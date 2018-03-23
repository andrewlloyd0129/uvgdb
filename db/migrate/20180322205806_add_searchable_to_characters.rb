class AddSearchableToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :searchable, :text
  end
end
