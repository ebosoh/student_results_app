class CreateLeatherStageOnes < ActiveRecord::Migration
  def change
    create_table :leather_stage_ones do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :slt_1101
      t.integer :igs_0201
      t.integer :slt_1102
      t.integer :tdt_0104
      t.integer :slt_0103
      t.integer :tdt_0103
      t.integer :slt_0104
      t.integer :slt_0105
      t.integer :slt_0106
      t.integer :slt_0107
      t.integer :slt_0108
      t.integer :hns_200
      t.decimal :mean
      t.text :recommendation
      t.integer :grouping

      t.timestamps null: false
    end
  end
end
