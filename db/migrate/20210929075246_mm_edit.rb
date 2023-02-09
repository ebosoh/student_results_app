class MmEdit < ActiveRecord::Migration
  def change
	  rename_column :mathematics_first_years, :igs_1101, :igs_1104
	  rename_column :mathematics_first_years, :igs_1102, :igs_1201
  end
  
  end
