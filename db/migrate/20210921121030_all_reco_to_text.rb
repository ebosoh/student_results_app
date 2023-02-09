class AllRecoToText < ActiveRecord::Migration
  def up
	  change_column :actuarial_science_first_years, :recommendation, :text
	  change_column :industrial_chemistry_first_years, :recommendation, :text
	  change_column :leather_technology_first_years, :recommendation, :text
	  change_column :mathematics_first_years, :recommendation, :text
	  change_column :polymer_chemistry_first_years, :recommendation, :text
  
  
	change_column :actuarial_science_second_years, :recommendation, :text
	  change_column :industrial_chemistry_second_years, :recommendation, :text
	  change_column :leather_technology_second_years, :recommendation, :text
	  change_column :mathematics_second_years, :recommendation, :text
	  change_column :polymer_chemistry_second_years, :recommendation, :text
  
        change_column :actuarial_science_third_years, :recommendation, :text
	  #change_column :industrial_chemistry_third_years, :recommendation, :string
	  change_column :leather_technology_third_years, :recommendation, :text
	  change_column :mathematics_third_years, :recommendation, :text
	  change_column :polymer_chemistry_third_years, :recommendation, :text
  
        change_column :actuarial_science_fourth_years, :recommendation, :text
	  change_column :industrial_chemistry_fourth_years, :recommendation, :text
	  change_column :leather_technology_fourth_years, :recommendation, :text
	  change_column :mathematics_fourth_years, :recommendation, :text
	  change_column :polymer_chemistry_fourth_years, :recommendation, :text
   
  end
  
    
  
  def down
	change_column :actuarial_science_first_years, :recommendation, :string
	  change_column :industrial_chemistry_first_years, :recommendation, :string
	  change_column :leather_technology_first_years, :recommendation, :string
	  change_column :mathematics_first_years, :recommendation, :string
	  change_column :polymer_chemistry_first_years, :recommendation, :string
  
  
	change_column :actuarial_science_second_years, :recommendation, :string
	  change_column :industrial_chemistry_second_years, :recommendation, :string
	  change_column :leather_technology_second_years, :recommendation, :string
	  change_column :mathematics_second_years, :recommendation, :string
	  change_column :polymer_chemistry_second_years, :recommendation, :string
  
  change_column :actuarial_science_third_years, :recommendation, :string
	  #change_column :industrial_chemistry_third_years, :recommendation, :string
	  change_column :leather_technology_third_years, :recommendation, :string
	  change_column :mathematics_third_years, :recommendation, :text
	  change_column :polymer_chemistry_third_years, :recommendation, :string
  
  change_column :actuarial_science_fourth_years, :recommendation, :string
	  change_column :industrial_chemistry_fourth_years, :recommendation, :string
	  change_column :leather_technology_fourth_years, :recommendation, :string
	  change_column :mathematics_fourth_years, :recommendation, :string
	  change_column :polymer_chemistry_fourth_years, :recommendation, :string  
	  
 
  end
  
end
  

