class StillLtSecond < ActiveRecord::Migration
  def change
   										
  remove_column :leather_technology_second_years, :mean
  remove_column :leather_technology_second_years, :cumulative_mean
  remove_column :leather_technology_second_years, :recommendation
  add_column :leather_technology_second_years, :slt_2104, :integer
 add_column :leather_technology_second_years, :mean, :decimal, precision:  2,  scale: 3
  add_column :leather_technology_second_years, :cumulative_mean, :decimal, precision: 2, scale: 3
  add_column :leather_technology_second_years, :recommendation, :string
  
   
  end
end
