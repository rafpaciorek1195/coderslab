class CreatePaths < ActiveRecord::Migration
  def change
    create_table :paths do |t|
      t.string :path_name
      t.timestamps null: false
    end
  end

  
end
