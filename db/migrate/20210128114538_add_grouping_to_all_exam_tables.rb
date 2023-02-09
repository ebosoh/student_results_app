class AddGroupingToAllExamTables < ActiveRecord::Migration
  def change
	  add_column :actuarial_science_first_years, :grouping, :string
	  add_column :actuarial_science_second_years, :grouping, :string
	 
	  add_column :actuarial_science_fourth_years, :grouping, :string
	  
	   add_column :leather_technology_first_years, :grouping, :string
	   add_column :leather_technology_second_years, :grouping, :string
	   add_column :leather_technology_third_years, :grouping, :string
	   add_column :leather_technology_fourth_years, :grouping, :string
	  
	  add_column :industrial_chemistry_first_years, :grouping, :string
	  add_column :industrial_chemistry_second_years, :grouping, :string
	  add_column :industrial_chemistry_third_years, :grouping, :string
	  add_column :industrial_chemistry_fourth_years, :grouping, :string
	  
	  add_column :mathematics_first_years, :grouping, :string
	  add_column :mathematics_second_years, :grouping, :string
	  add_column :mathematics_third_years, :grouping, :string
	  add_column :mathematics_fourth_years, :grouping, :string
	  
	  add_column :polymer_chemistry_first_years, :grouping, :string
	  add_column :polymer_chemistry_second_years, :grouping, :string
	  add_column :polymer_chemistry_third_years, :grouping, :string
	  add_column :polymer_chemistry_fourth_years, :grouping, :string
	    
	  
	  
  end
end
