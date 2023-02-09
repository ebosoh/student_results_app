class RenameCurrentMeanToMeanInActuarialScienceFirstYears < ActiveRecord::Migration
  def change
	  rename_column :actuarial_science_first_years, :current_mean, :mean
  end
end
