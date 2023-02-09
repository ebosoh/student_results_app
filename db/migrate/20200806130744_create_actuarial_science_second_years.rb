class CreateActuarialScienceSecondYears < ActiveRecord::Migration
  def change
    create_table :actuarial_science_second_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :sas_2101
      t.integer :sas_2190
      t.integer :sas_2191
      t.integer :sas_2102
      t.integer :sma_2406
      t.integer :bsm_1101
      t.integer :sas_2201
      t.integer :sas_2290
      t.integer :sas_2291
      t.integer :sma_2321
      t.integer :sma_2231
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
