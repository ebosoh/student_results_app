class AddSch4199AndMeanAndCumulativeMeanToIndustrialChemistryFourthYear < ActiveRecord::Migration
  def change
   
    add_column :industrial_chemistry_fourth_years, :sch4199, :integer, :after => :sch_4206
    add_column :industrial_chemistry_fourth_years, :mean, :decimal
    add_column :industrial_chemistry_fourth_years, :cumulative_mean, :decimal
   
    
  end
end
