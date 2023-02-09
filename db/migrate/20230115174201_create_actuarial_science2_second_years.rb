class CreateActuarialScience2SecondYears < ActiveRecord::Migration
  def change
    create_table :actuarial_science2_second_years do |t|
      t.string :admission_no
      t.integer :student_id
      t.string :academic_year
      t.integer :sas_2101
      t.integer :sas_2291
      t.integer :sas_2190
      t.integer :sas_2192
      t.integer :sas_2191
      t.integer :sma_2110
      t.integer :sma_2118
      t.integer :igs_2101
      t.integer :sas_2201
      t.integer :sas_2290
      t.integer :sma_2232
      t.integer :sma_3261
      t.integer :igs_2102
      t.decimal :mean
      t.text :recommendation
      t.integer :grouping

      t.timestamps null: false
    end
  end
end
