class CreateLeatherStageThrees < ActiveRecord::Migration
  def change
    create_table :leather_stage_threes do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :slt_0201
      t.integer :slt_0202
      t.integer :slt_0203
      t.integer :bba_0215
      t.integer :slt_0204
      t.integer :slt_0205
      t.integer :slt_0206
      t.integer :slt_0207
      t.string :slt_0199
      t.decimal :mean
      t.text :recommendation
      t.integer :grouping

      t.timestamps null: false
    end
  end
end
