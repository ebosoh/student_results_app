class CreateMathematicsSecondYears < ActiveRecord::Migration
  def change
    create_table :mathematics_second_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :ccs_2101
      t.integer :sma_2164
      t.integer :sma_1218
      t.integer :sma_2149
      t.integer :sma_2112
      t.integer :sas_2101
      t.integer :hrd_2401
      t.integer :sma_2224
      t.integer :sma_2119
      t.integer :sma_2232
      t.integer :sma_2215
      t.integer :sma_2238
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
