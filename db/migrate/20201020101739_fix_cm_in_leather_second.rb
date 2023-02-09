class FixCmInLeatherSecond < ActiveRecord::Migration
  def change
    
    rename_column :leather_technology_second_years, :current_mean, :mean
  end
end
