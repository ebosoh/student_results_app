class RemoveMeanfromIcf < ActiveRecord::Migration
  def change
	  remove_column :industrial_chemistry_fourth_years, :mean
	  remove_column :industrial_chemistry_fourth_years, :cumulative_mean
  end
end
