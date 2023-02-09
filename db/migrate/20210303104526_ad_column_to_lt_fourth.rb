class AdColumnToLtFourth < ActiveRecord::Migration
  def change
	  remove_column :leather_technology_fourth_years, :mean
	  remove_column :leather_technology_fourth_years, :cumulative_mean
	  remove_column :leather_technology_fourth_years, :recommendation
	  remove_column :leather_technology_fourth_years, :grouping
	  add_column :leather_technology_fourth_years, :slt_2410, :integer
	  
	  add_column :leather_technology_fourth_years, :mean_4, :decimal
	  add_column :leather_technology_fourth_years, :cumulative_mean, :decimal
	  add_column :leather_technology_fourth_years, :recommendation, :string
	  add_column :leather_technology_fourth_years, :grouping, :integer
	  
	  
  end
end
