class ChangeCurrentMeanToDecimalInActurialScience < ActiveRecord::Migration
  def change
	   change_column :actuarial_science_first_years, :current_mean, :decimal, precision: 2,  scale: 3
  end
end
