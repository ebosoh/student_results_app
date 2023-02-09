class EditPolymerModel < ActiveRecord::Migration
  def change
	  
	remove_column :polymer_chemistry_fourth_years, :mean
	remove_column :polymer_chemistry_fourth_years, :cumulative_mean
	remove_column :polymer_chemistry_fourth_years, :recommendation
	
end




end
