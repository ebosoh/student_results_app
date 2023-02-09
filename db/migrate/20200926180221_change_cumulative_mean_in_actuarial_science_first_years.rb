class ChangeCumulativeMeanInActuarialScienceFirstYears < ActiveRecord::Migration
  def change
    change_column :actuarial_science_first_years, :cumulative_mean, :float, precision: 2,  scale: 3
  end
end
