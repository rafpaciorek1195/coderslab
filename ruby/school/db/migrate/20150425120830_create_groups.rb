class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :group_subject
      t.belongs_to :teacher, index: true
      t.belongs_to :student, index: true
      t.timestamps null: false
    end
  end
end
