class RenameColumnsInLtThird < ActiveRecord::Migration
  def change
	  rename_column :leather_technology_third_years, :slt_2400, :slt_3101									
	  rename_column :leather_technology_third_years, :slt_2406, :slt_3102
	  rename_column :leather_technology_third_years, :slt_2313, :slt_3103
	  rename_column :leather_technology_third_years, :slt_2307, :slt_3104
	  rename_column :leather_technology_third_years, :slt_2305, :slt_3105
	  rename_column :leather_technology_third_years, :slt_2308, :slt_3106
	  rename_column :leather_technology_third_years, :slt_2404, :igs_3101
	  rename_column :leather_technology_third_years, :slt_2312, :slt_3201
	  rename_column :leather_technology_third_years, :sch_2362, :slt_3202
	  rename_column :leather_technology_third_years, :slt_2309, :slt_3203
	  rename_column :leather_technology_third_years, :slt_2310, :slt_3204
	  rename_column :leather_technology_third_years, :slt_2311, :slt_3205
	  rename_column :leather_technology_third_years, :slt_2306, :igs_3202
	  
	  remove_column :leather_technology_third_years, :slt_2314
	  
	  
	  
  end
end
