class CreatePolymerChemistryFirstYears < ActiveRecord::Migration
  def change
    create_table :polymer_chemistry_first_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :sch_1101
      t.integer :sch_1102
      t.integer :sch_1103
      t.integer :sma_1108
      t.integer :sma_1117
      t.integer :igs_1104
      t.integer :hns_1100
      t.integer :sch_1201
      t.integer :sch_1202
      t.integer :scp_1201
      t.integer :ccs_1101
      t.integer :sma_1118
      t.integer :sas_1201
      t.integer :igs_1102
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
