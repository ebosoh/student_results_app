class CreateMathematicsFourthYears < ActiveRecord::Migration
  def change
    create_table :mathematics_fourth_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :sma_4126
      t.integer :sma_4145
      t.integer :ccs_4102
      t.integer :sma_4199
      t.integer :sma_4147
      t.integer :sma_4143
      t.integer :sma_4153
      t.integer :sma_4174
      t.integer :sas_4110
      t.integer :sma_4131
      t.integer :sma_4241
      t.integer :sma_4239
      t.integer :sma_4299
      t.integer :sma_4248
      t.integer :sma_4282
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
