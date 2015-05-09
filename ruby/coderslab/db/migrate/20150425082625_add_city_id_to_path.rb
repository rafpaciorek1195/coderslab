class AddCityIdToPath < ActiveRecord::Migration

  def up
    add_column :paths, :city_id, :integer
  end

  def down
    remove_column :paths, :city_id
  end
end
