class CreateIndustrialChemistryFourthYears < ActiveRecord::Migration
  def change
    create_table :industrial_chemistry_fourth_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :hrd_2401
      t.integer :sch_4101
      t.integer :sch_4199
      t.integer :igs_4101
      t.integer :sch_4102
      t.integer :sch_4103
      t.integer :sch_4104
      t.integer :sch_4105
      t.integer :sch_4106
      t.integer :sch_4201
      t.integer :sch_4202
      t.integer :sch_4199
      t.integer :igs_4102
      t.integer :sch_4203
      t.integer :sch_4204
      t.integer :sch_4205
      t.integer :sch_4206
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
