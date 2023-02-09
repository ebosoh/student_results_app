class FixCmInActuarialSecond < ActiveRecord::Migration
  def change
    
    rename_column :actuarial_science_second_years, :current_mean, :mean
  end
end
