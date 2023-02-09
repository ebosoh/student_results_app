class FixCmInActuarialFourth < ActiveRecord::Migration
  def change
    
    rename_column :actuarial_science_fourth_years, :current_mean, :mean
  end
end
