class ChangeMeanToFloatInActuarialScienceFirstYears < ActiveRecord::Migration
  def change
     change_column :actuarial_science_first_years, :current_mean, :float, precision: 2,  scale: 3
  end
end
