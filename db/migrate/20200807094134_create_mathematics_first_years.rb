class CreateMathematicsFirstYears < ActiveRecord::Migration
  def change
    create_table :mathematics_first_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :igs_1101
      t.integer :hns_1100
      t.integer :ccs_1101
      t.integer :sma_1108
      t.integer :sma_1109
      t.integer :sma_1105
      t.integer :igs_1102
      t.integer :ccs_1203
      t.integer :sma_1117
      t.integer :sma_1248
      t.integer :sma_1211
      t.integer :sas_1201
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
