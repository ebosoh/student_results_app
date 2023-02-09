class RenameColumnsInLtSecondYears < ActiveRecord::Migration
  def change
	  remove_column :leather_technology_second_years, :slt_2304
	  remove_column :leather_technology_second_years, :slt_2209
	   rename_column :leather_technology_second_years, :slt_2203, :sch_2102
	  rename_column :leather_technology_second_years, :slt_2302, :slt_2101
	  rename_column :leather_technology_second_years, :slt_2206, :slt_2102
	  rename_column :leather_technology_second_years, :slt_2207, :slt_2103
	  rename_column :leather_technology_second_years, :slt_2301, :slt_2203
	  rename_column :leather_technology_second_years, :slt_2204, :slt_2105
	  rename_column :leather_technology_second_years, :slt_2208, :slt_2201
	  rename_column :leather_technology_second_years, :bcm_2106, :sch_2202
	  rename_column :leather_technology_second_years, :slt_2300, :slt_2202
	 rename_column :leather_technology_second_years, :slt_2303, :sch_2203
	  
  end
end
