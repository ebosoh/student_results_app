class RenameMeanInAsfy < ActiveRecord::Migration
  def change
	  
	  rename_column :actuarial_science_first_years, :mean, :mean_1
	  rename_column :actuarial_science_second_years, :mean, :mean_2
	  rename_column :actuarial_science_third_years, :mean, :mean_3
	  rename_column :actuarial_science_fourth_years, :mean, :mean_4
	  
  end
end
