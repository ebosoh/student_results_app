class RenameProjectInIcfourth < ActiveRecord::Migration
  def change
    remove_column :industrial_chemistry_fourth_years, :mean
	  remove_column :industrial_chemistry_fourth_years, :cumulative_mean
	  remove_column :industrial_chemistry_fourth_years, :recommendation
	  remove_column :industrial_chemistry_fourth_years, :grouping
	  add_column :industrial_chemistry_fourth_years, :sch_3202, :integer
      
	  
	  add_column :industrial_chemistry_fourth_years, :mean_4, :decimal
	  add_column :industrial_chemistry_fourth_years, :cumulative_mean, :decimal
	  add_column :industrial_chemistry_fourth_years, :recommendation, :string
	  add_column :industrial_chemistry_fourth_years, :grouping, :integer
      
      rename_column :industrial_chemistry_fourth_years, :sch4199, :sch_4299
  end
end
