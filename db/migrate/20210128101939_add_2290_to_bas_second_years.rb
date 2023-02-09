class Add2290ToBasSecondYears < ActiveRecord::Migration
  def change
	  
	  remove_column :actuarial_science_second_years, :mean
	  remove_column :actuarial_science_second_years, :cumulative_mean
	  remove_column :actuarial_science_second_years, :recommendation
	  add_column 	:actuarial_science_second_years, :sas_2291, :integer
	  
	  
	  add_column :actuarial_science_second_years, :mean, :decimal, precision: 2, scale: 3
	  add_column :actuarial_science_second_years, :cumulative_mean, :decimal, precision: 2, scale: 3
	  add_column :actuarial_science_second_years, :recommendation, :string
  end
end
