class FixCmInLeatherThird < ActiveRecord::Migration
  def change
    rename_column :leather_technology_third_years, :current_mean, :mean   
  end
end
