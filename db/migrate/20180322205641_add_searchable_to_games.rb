class AddSearchableToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :searchable, :text
  end
end
