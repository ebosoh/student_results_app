class RenameSasInIcSecond < ActiveRecord::Migration
  def change
	  rename_column :industrial_chemistry_second_years, :sas_2201, :sas_2101
  end
end
