class CreateActuarialScienceFirstYears < ActiveRecord::Migration
  def change
    create_table :actuarial_science_first_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :bsm_2114
      t.integer :hrd_2101
      t.integer :bsm_1102
      t.integer :sas_1101
      t.integer :sas_1190
      t.integer :sma_2101
      t.integer :szl_2111
      t.integer :bsm_1204
      t.integer :sas_1201
      t.integer :sas_1250
      t.integer :sas_1190
      t.integer :sma_2102
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
