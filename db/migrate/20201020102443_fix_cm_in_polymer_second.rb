class FixCmInPolymerSecond < ActiveRecord::Migration
  def change
    
    rename_column :polymer_chemistry_second_years, :current_mean, :mean
  end
end
