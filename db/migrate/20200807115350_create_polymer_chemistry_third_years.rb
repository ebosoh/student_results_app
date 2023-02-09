class CreatePolymerChemistryThirdYears < ActiveRecord::Migration
  def change
    create_table :polymer_chemistry_third_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :scp_3101
      t.integer :scp_3102
      t.integer :scp_3103
      t.integer :scp_3104
      t.integer :scp_3105
      t.integer :scp_3106
      t.integer :igs_3101
      t.integer :scp_3201
      t.integer :scp_3202
      t.integer :sch_3203
      t.integer :scp_3203
      t.integer :scp_3204
      t.integer :scp_3205
      t.integer :igs_3102
      t.integer :igs_3102
      t.string :scp_3399
      t.string :string
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
