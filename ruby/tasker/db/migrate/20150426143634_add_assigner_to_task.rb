class AddAssignerToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :assigner_id, :integer
  end
end
