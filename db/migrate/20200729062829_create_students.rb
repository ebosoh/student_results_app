class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :admission_no
      t.string :name
      t.string :gender
      t.integer :programme_id
      t.date :group
      t.string :faculty
      t.string :department
      t.string :level

      t.timestamps null: false
    end
  end
end
