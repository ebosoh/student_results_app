class MathSecondRemoveAdd < ActiveRecord::Migration
  def change
	  remove_column :mathematics_second_years, :hrd_2401
	  remove_column :mathematics_second_years, :sma_2238
	  remove_column :mathematics_second_years, :mean
	  remove_column :mathematics_second_years, :cumulative_mean
	  remove_column :mathematics_second_years, :recommendation
	  remove_column :mathematics_second_years, :grouping
	  remove_column :mathematics_second_years, :sma_2238
	 
	 rename_column :mathematics_second_years, :ccs_2101, :ccs_2102
	  
	  
	  
	  
	  add_column :mathematics_second_years, :igs_2101, :integer
	  add_column :mathematics_second_years, :igs_2202, :integer
	  add_column :mathematics_second_years, :mean, :integer
	  add_column :mathematics_second_years, :cumulative_mean, :integer
	  add_column :mathematics_second_years, :recommendation, :string
	  add_column :mathematics_second_years, :grouping, :date
	
 
	  
	  
	  
  end
end
