class AddCumulativeMeanToIndustrialChemistryFourthYear < ActiveRecord::Migration
  def change
   
    add_column :industrial_chemistry_fourth_years, :recommendation, :string
  end
end
