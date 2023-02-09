class FixCmInMathsFourth < ActiveRecord::Migration
  def change
    rename_column :mathematics_fourth_years, :current_mean, :mean
  end
end
