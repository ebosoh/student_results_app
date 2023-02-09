class FixCmInIndustrialThird < ActiveRecord::Migration
  def change
    rename_column :industrial_chemistry_third_years, :current_mean, :mean
  end
end
