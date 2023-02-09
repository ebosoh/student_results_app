class RenameSmaColumnInIc < ActiveRecord::Migration
  def change
	  rename_column :industrial_chemistry_first_years, :sma_1118, :sma_1218
  end
end
