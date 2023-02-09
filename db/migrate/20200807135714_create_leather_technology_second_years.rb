class CreateLeatherTechnologySecondYears < ActiveRecord::Migration
  def change
    create_table :leather_technology_second_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :sch_2202
      t.integer :slt_2302
      t.integer :slt_2206
      t.integer :slt_2207
      t.integer :slt_2203
      t.integer :slt_2204
      t.integer :slt_2208
      t.integer :bcm_2106
      t.integer :slt_2300
      t.integer :slt_2301
      t.integer :slt_2204
      t.integer :slt_2303
      t.integer :slt_2304
      t.integer :slt_2209
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
