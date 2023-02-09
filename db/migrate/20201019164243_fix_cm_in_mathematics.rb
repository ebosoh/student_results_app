class FixCmInMathematics < ActiveRecord::Migration
  def change
    rename_column :mathematics_first_years, :current_mean, :mean
    


  end
end
