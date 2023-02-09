class ChangeIcFourth < ActiveRecord::Migration
  def change
	  remove_column :industrial_chemistry_fourth_years, :mean
	  remove_column :industrial_chemistry_fourth_years, :cumulative_mean
	  remove_column :industrial_chemistry_fourth_years, :recommendation
	  add_column :industrial_chemistry_fourth_years, :sch_3399, :string
	  
	  
	  add_column :industrial_chemistry_fourth_years, :mean, :decimal, precision: 2, scale: 3
	  add_column :industrial_chemistry_fourth_years, :cumulative_mean, :decimal, precision: 2, scale: 3
	  add_column :industrial_chemistry_fourth_years, :recommendation, :string
  end
end
