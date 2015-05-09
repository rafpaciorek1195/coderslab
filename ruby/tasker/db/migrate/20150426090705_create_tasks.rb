class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.belongs_to :board, index: true
      t.boolean :archived
      t.timestamps null: false
    end
  end
end
