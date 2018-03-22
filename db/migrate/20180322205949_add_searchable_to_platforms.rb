class AddSearchableToPlatforms < ActiveRecord::Migration[5.1]
  def change
    add_column :platforms, :searchable, :text
  end
end
