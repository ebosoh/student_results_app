class RenameFieldsInLtF < ActiveRecord::Migration
  def change
	  
	  rename_column :leather_technology_fourth_years, :hrd_2401, :bba_2201
	  rename_column :leather_technology_fourth_years, :slt_2408, :slt_4101
	  rename_column :leather_technology_fourth_years, :slt_2402, :slt_4102
	  rename_column :leather_technology_fourth_years, :slt_2407, :slt_4103
	  rename_column :leather_technology_fourth_years, :sch_2461, :slt_4199
	  rename_column :leather_technology_fourth_years, :slt_2410, :igs_4101
	  rename_column :leather_technology_fourth_years, :slt_2411, :slt_3399
	  rename_column :leather_technology_fourth_years, :slt_2414, :slt4199
	  rename_column :leather_technology_fourth_years, :slt_2403, :slt_4201
	  rename_column :leather_technology_fourth_years, :slt_2409, :slt_4202
	  rename_column :leather_technology_fourth_years, :slt_2405, :slt_4203
	  rename_column :leather_technology_fourth_years, :slt_2413, :slt_4204
	  rename_column :leather_technology_fourth_years, :slt_2412, :igs_4202
	  
  
  end
end
