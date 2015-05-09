class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :student_name
      t.string :student_surname
      t.timestamps null: false
    end
  end
end
