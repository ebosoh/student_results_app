class LeatherFirstYearChange < ActiveRecord::Migration
  def change
	  remove_column :leather_technology_first_years, :mean
	  remove_column :leather_technology_first_years, :cumulative_mean
	  remove_column :leather_technology_first_years, :recommendation
	  remove_column :leather_technology_first_years, :grouping
	  
	  
	  add_column 	 :leather_technology_first_years, :igs_1201, :integer
	  rename_column :leather_technology_first_years, :slt_2101, :slt_1102
	  rename_column :leather_technology_first_years, :sma_1103, :sma_2104
	  
	  add_column :leather_technology_first_years, :mean, :decimal, precision: 2, scale: 3
	  add_column :leather_technology_first_years, :cumulative_mean, :decimal, precision: 2, scale: 3
	  add_column :leather_technology_first_years, :recommendation, :string
	  add_column :leather_technology_first_years, :grouping, :string
  end
end
