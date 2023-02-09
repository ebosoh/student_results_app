class FixCmInMathsSecond < ActiveRecord::Migration
  def change
    
    rename_column :mathematics_second_years, :current_mean, :mean
  end
end
