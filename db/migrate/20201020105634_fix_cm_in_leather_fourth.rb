class FixCmInLeatherFourth < ActiveRecord::Migration
  def change
    
    rename_column :leather_technology_fourth_years, :current_mean, :mean
  end
end
