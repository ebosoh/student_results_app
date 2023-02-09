class CreateMscLeatherTechnologyMarks < ActiveRecord::Migration
  def change
    create_table :msc_leather_technology_marks do |t|
      t.string :admission_no
      t.integer :student_id
      t.string :academic_year
      t.integer :slt_6100
      t.integer :slt_6101
      t.integer :slt_6102
      t.integer :slt_6103
      t.integer :slt_6104
      t.integer :slt_6105
      t.integer :slt_6106
      t.integer :slt_6107
      t.integer :slt_6108
      t.integer :slt_6109
      t.integer :slt_6110
      t.integer :slt_6111
      t.integer :slt_6112
      t.integer :slt_6113
      t.integer :slt_6115
      t.integer :slt_6116
      t.string :slt_6117
      t.integer :slt_6118
      t.string :slt_6200
      t.decimal :mean, precision: 2, scale: 2
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
