class CreateMathematicsThirdYears < ActiveRecord::Migration
  def change
    create_table :mathematics_third_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :sma_3151
      t.integer :sma_3121
      t.integer :sma_3158
      t.integer :sma_3133
      t.integer :sma_3164
      t.integer :ccs_3102
      t.integer :sma_3259
      t.integer :sma_3244
      t.integer :sma_3240
      t.integer :sma_3237
      t.integer :sma_3242
      t.integer :sma_3252
      t.integer :sas_3204
      t.integer :sma_3281
      t.string :sma_3399
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
