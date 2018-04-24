class AddStatusToPlatforms < ActiveRecord::Migration[5.1]
  def change
    add_column :platforms, :status, :integer, :default => 0
  end
end
