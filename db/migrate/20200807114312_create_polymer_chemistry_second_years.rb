class CreatePolymerChemistrySecondYears < ActiveRecord::Migration
  def change
    create_table :polymer_chemistry_second_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :scp_2101
      t.integer :sch_2102
      t.integer :sch_2103
      t.integer :sch_2104
      t.integer :sch_2105
      t.integer :sch_2106
      t.integer :igs_2101
      t.integer :scp_2201
      t.integer :sch_2202
      t.integer :sch_2203
      t.integer :sch_2204
      t.integer :sch_2205
      t.integer :sch_2206
      t.integer :igs_2102
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
