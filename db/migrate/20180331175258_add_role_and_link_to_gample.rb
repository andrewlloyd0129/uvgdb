class AddRoleAndLinkToGample < ActiveRecord::Migration[5.1]
  def change
    add_column :gamples, :role, :string
    add_column :gamples, :link, :string
  end
end
