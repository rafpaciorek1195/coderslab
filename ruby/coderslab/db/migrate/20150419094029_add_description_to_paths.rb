class AddDescriptionToPaths < ActiveRecord::Migration
  def up
   add_column :paths, :description, :text
  end

  def down
   remove_column :paths, :description, :text
  end

end
