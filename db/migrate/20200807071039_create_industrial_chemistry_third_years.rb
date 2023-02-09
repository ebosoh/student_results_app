class CreateIndustrialChemistryThirdYears < ActiveRecord::Migration
  def change
    create_table :industrial_chemistry_third_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :sch_3101
      t.integer :sch_3102
      t.integer :sch_3103
      t.integer :sch_3104
      t.integer :sch_3106
      t.integer :sch_3107
      t.integer :igs_3101
      t.integer :sch_3201
      t.integer :sch_3202
      t.integer :sch_3203
      t.integer :sch_3204
      t.integer :sch_3205
      t.integer :sch_3206
      t.integer :igs_3102
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
