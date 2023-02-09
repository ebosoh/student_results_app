class CreateLeatherTechnologyFourthYears < ActiveRecord::Migration
  def change
    create_table :leather_technology_fourth_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :hrd_2401
      t.integer :slt_2408
      t.integer :slt_2402
      t.integer :slt_2407
      t.integer :sch_2461
      t.integer :slt_2410
      t.integer :slt_2411
      t.integer :slt_2414
      t.integer :slt_2403
      t.integer :slt_2407
      t.integer :slt_2409
      t.integer :slt_2405
      t.integer :slt_2413
      t.integer :slt_2412
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
