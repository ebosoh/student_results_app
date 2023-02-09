class FixCmInIndustrialSecond < ActiveRecord::Migration
  def change
    
    rename_column :industrial_chemistry_second_years, :current_mean, :mean
  end
end
