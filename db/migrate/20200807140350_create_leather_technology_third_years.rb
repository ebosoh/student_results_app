class CreateLeatherTechnologyThirdYears < ActiveRecord::Migration
  def change
    create_table :leather_technology_third_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :slt_2400
      t.integer :slt_2406
      t.integer :slt_2313
      t.integer :slt_2307
      t.integer :slt_2305
      t.integer :slt_2308
      t.integer :slt_2404
      t.integer :slt_2312
      t.integer :sch_2362
      t.integer :slt_2309
      t.integer :slt_2310
      t.integer :slt_2311
      t.integer :slt_2306
      t.string :slt_2314
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
