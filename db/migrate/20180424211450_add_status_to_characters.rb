class AddStatusToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :status, :integer, :default => 0
  end
end
