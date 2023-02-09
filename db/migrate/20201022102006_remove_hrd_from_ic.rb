class RemoveHrdFromIc < ActiveRecord::Migration
  def change
	  rename_column :industrial_chemistry_fourth_years, :hrd_2401, :bba_2201  
  end
end
