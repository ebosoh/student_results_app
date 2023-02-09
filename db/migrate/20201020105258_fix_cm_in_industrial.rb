class FixCmInIndustrial < ActiveRecord::Migration
  def change
    
    
    rename_column :industrial_chemistry_fourth_years, :current_mean, :mean
  end
end
