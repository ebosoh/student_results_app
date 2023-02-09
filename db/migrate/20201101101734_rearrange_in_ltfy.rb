class RearrangeInLtfy < ActiveRecord::Migration
  def change
    remove_column :leather_technology_first_years, :mean
    remove_column :leather_technology_first_years, :cumulative_mean
    remove_column :leather_technology_first_years, :recommendation
    
    
    
    
  end
end
