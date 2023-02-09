class FixCmInActuarialThird < ActiveRecord::Migration
  def change
    rename_column :actuarial_science_third_years, :current_mean, :mean   


  end
end
