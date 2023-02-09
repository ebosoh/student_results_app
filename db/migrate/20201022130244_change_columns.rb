class ChangeColumns < ActiveRecord::Migration
  def change
	  change_column :actuarial_science_first_years, :mean, :decimal, :precision => 2, :scale => 3
	  change_column :actuarial_science_first_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
	  change_column :actuarial_science_second_years, :mean, :decimal, :precision => 2, :scale => 3
	  change_column :actuarial_science_second_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
	  change_column :actuarial_science_third_years, :mean, :decimal, :precision => 2, :scale => 3
	  change_column :actuarial_science_third_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
	  change_column :actuarial_science_fourth_years, :mean, :decimal, :precision => 2, :scale => 3
	  change_column :actuarial_science_fourth_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
	  
	  
	  change_column :industrial_chemistry_first_years, :mean, :decimal, :precision => 2, :scale => 3
	  change_column :industrial_chemistry_first_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
	  change_column :industrial_chemistry_second_years, :mean, :decimal, :precision => 2, :scale => 3
	  change_column :industrial_chemistry_second_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
	  change_column :industrial_chemistry_third_years, :mean, :decimal, :precision => 2, :scale => 3
	  change_column :industrial_chemistry_third_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
	  change_column :industrial_chemistry_fourth_years, :mean, :decimal, :precision => 2, :scale => 3
	  
	  
		change_column :polymer_chemistry_first_years, :mean, :decimal, :precision => 2, :scale => 3
		change_column :polymer_chemistry_first_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
		change_column :polymer_chemistry_second_years, :mean, :decimal, :precision => 2, :scale => 3
		change_column :polymer_chemistry_second_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3 
		change_column :polymer_chemistry_third_years, :mean, :decimal, :precision => 2, :scale => 3
		change_column :polymer_chemistry_third_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
		change_column :polymer_chemistry_fourth_years, :mean, :decimal, :precision => 2, :scale => 3
		change_column :polymer_chemistry_fourth_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
		
		change_column :leather_technology_first_years, :mean, :decimal, :precision => 2, :scale => 3
		change_column :leather_technology_first_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
		change_column :leather_technology_second_years, :mean, :decimal, :precision => 2, :scale => 3
		change_column :leather_technology_second_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
		change_column :leather_technology_third_years, :mean, :decimal, :precision => 2, :scale => 3
		change_column :leather_technology_third_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
		change_column :leather_technology_fourth_years, :mean, :decimal, :precision => 2, :scale => 3
		change_column :leather_technology_fourth_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
		
		change_column :mathematics_first_years, :mean, :decimal, :precision => 2, :scale => 3
		change_column :mathematics_first_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
		change_column :mathematics_second_years, :mean, :decimal, :precision => 2, :scale => 3
		change_column :mathematics_second_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
		change_column :mathematics_third_years, :mean, :decimal, :precision => 2, :scale => 3
		change_column :mathematics_third_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
		change_column :mathematics_fourth_years, :mean, :decimal, :precision => 2, :scale => 3
		change_column :mathematics_fourth_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3

  end
end
