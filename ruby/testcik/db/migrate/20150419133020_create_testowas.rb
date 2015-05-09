class CreateTestowas < ActiveRecord::Migration
  def change
    create_table :testowas do |t|
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
