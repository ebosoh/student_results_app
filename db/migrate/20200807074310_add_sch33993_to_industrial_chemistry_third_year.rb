class AddSch33993ToIndustrialChemistryThirdYear < ActiveRecord::Migration
  def change
	  add_column :industrial_chemistry_third_years, :sch_3399, :string, :after => :igs_3102
  end
end
