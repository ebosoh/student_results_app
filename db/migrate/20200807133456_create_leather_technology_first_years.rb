class CreateLeatherTechnologyFirstYears < ActiveRecord::Migration
  def change
    create_table :leather_technology_first_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.integer :hrd_2101
      t.integer :ics_2100
      t.integer :sma_2104
      t.integer :sch_2100
      t.integer :sch_2102
      t.integer :slt_2100
      t.integer :slt_2101
      t.integer :bsm_2111
      t.integer :szl_2111
      t.integer :sta_2100
      t.integer :sch_2101
      t.integer :sch_2103
      t.integer :slt_2201
      t.integer :slt_2200
      t.integer :slt_2205
      t.integer :slt_2202
      t.integer :current_mean
      t.integer :cumulative_mean
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
