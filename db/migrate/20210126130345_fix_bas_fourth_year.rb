class FixBasFourthYear < ActiveRecord::Migration
  def change
	  remove_column :actuarial_science_fourth_years, :mean
	  remove_column :actuarial_science_fourth_years, :cumulative_mean
	  remove_column :actuarial_science_fourth_years, :recommendation
	  add_column 	:actuarial_science_fourth_years, :sas_3399, :string
	  
	  
	  add_column :actuarial_science_fourth_years, :mean, :decimal, precision: 2, scale: 3
	  add_column :actuarial_science_fourth_years, :cumulative_mean, :decimal, precision: 2, scale: 3
	  add_column :actuarial_science_fourth_years, :recommendation, :string
  end
end