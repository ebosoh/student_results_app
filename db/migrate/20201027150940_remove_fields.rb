class RemoveFields < ActiveRecord::Migration
  def change
	  remove_column :actuarial_science_first_years, :mean
	  remove_column :actuarial_science_first_years, :cumulative_mean
	  remove_column :actuarial_science_first_years, :recommendation
	  
  end
end
