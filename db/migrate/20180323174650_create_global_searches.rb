class CreateGlobalSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :global_searches do |t|

      t.timestamps
    end
  end
end
