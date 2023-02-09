class CreatePolymerChemistryFourthYears < ActiveRecord::Migration
  def change
    create_table :polymer_chemistry_fourth_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :bba_2201
      t.integer :scp_4101
      t.integer :scp_4102
      t.integer :scp_4199
      t.integer :igs_4101
      t.integer :scp_4201
      t.integer :scp_4202
      t.integer :scp_4203
      t.integer :scp_4299
      t.integer :igs_4102
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
