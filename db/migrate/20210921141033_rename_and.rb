class RenameAnd < ActiveRecord::Migration
  def change
	  
	remove_column :polymer_chemistry_first_years, :sch_1103
	  
	rename_column :polymer_chemistry_first_years, :ccs_1101, :ccs_1200
	rename_column :polymer_chemistry_first_years, :sma_1118, :sma_1218
	rename_column :polymer_chemistry_first_years, :igs_1102, :igs_1201
  end
end
