class AddMeanAgain < ActiveRecord::Migration
  def change
	  
	  
	add_column :polymer_chemistry_fourth_years, :mean, :decimal, :precision => 2, :scale => 3 
	add_column :polymer_chemistry_fourth_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3 
	add_column :polymer_chemistry_fourth_years, :recommendation, :string

  end
end
