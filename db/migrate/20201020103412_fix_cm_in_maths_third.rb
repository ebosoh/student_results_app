class FixCmInMathsThird < ActiveRecord::Migration
  def change
    rename_column :mathematics_third_years, :current_mean, :mean   
  end
end
