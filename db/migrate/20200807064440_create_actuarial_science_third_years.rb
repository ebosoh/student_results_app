class CreateActuarialScienceThirdYears < ActiveRecord::Migration
  def change
    create_table :actuarial_science_third_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :sas_3101
      t.integer :sas_3102
      t.integer :sas_3103
      t.integer :sas_3104
      t.integer :sas_3190
      t.integer :sas_3191
      t.integer :sas_3201
      t.integer :sas_3202
      t.integer :sas_3203
      t.integer :sas_3204
      t.integer :sas_3250
      t.integer :sas_3290
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
