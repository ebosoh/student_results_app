class CreateLeatherStageTwos < ActiveRecord::Migration
  def change
    create_table :leather_stage_twos do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :slt_0109
      t.integer :bba_0101
      t.integer :bba_0102
      t.integer :slt_0111
      t.integer :slt_0112
      t.integer :slt_0113
      t.integer :slt_0114
      t.integer :slt_0115
      t.integer :slt_0116
      t.integer :slt_0117
      t.decimal :mean
      t.text :recommendation
      t.integer :grouping

      t.timestamps null: false
    end
  end
end
