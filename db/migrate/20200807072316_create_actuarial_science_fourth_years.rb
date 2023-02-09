class CreateActuarialScienceFourthYears < ActiveRecord::Migration
  def change
    create_table :actuarial_science_fourth_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :bba_2201
      t.integer :sas_4101
      t.integer :sas_4102
      t.integer :sas_4190
      t.integer :sas_4191
      t.integer :sas_4199
      t.integer :sas_4199
      t.integer :sas_4201
      t.integer :sas_4290
      t.integer :sas_4291
      t.integer :sas_4292
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
