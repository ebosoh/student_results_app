class FixCmInPolymerThird < ActiveRecord::Migration
  def change
    
    rename_column :polymer_chemistry_third_years, :current_mean, :mean   
  end
end
