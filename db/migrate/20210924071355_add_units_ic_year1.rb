class AddUnitsIcYear1 < ActiveRecord::Migration
    
	  def up
	  add_column	:industrial_chemistry_first_years, :igs_1201, :integer, :after => :sch_1203
	  add_column	:industrial_chemistry_first_years, :ccs_1201, :integer, :after => :sch_1201
	   end

	def down
	remove_column	:industrial_chemistry_first_years, :igs_1201
	 remove_column :industrial_chemistry_first_years, :ccs_1201
	 end 
  
end
