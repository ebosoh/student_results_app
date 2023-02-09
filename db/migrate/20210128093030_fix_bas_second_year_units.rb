class FixBasSecondYearUnits < ActiveRecord::Migration
  def change
	  rename_column :actuarial_science_second_years, :sas_2102, :sas_2192
	  rename_column :actuarial_science_second_years, :sma_2406, :sma_2110
	  rename_column :actuarial_science_second_years, :bsm_1101, :sas_2291
	  rename_column :actuarial_science_second_years, :sas_2201, :sma_3261
	  rename_column :actuarial_science_second_years, :sas_2290, :sma_2232
	  rename_column :actuarial_science_second_years, :sas_2291, :bsm_1101
	  rename_column :actuarial_science_second_years, :sma_2321, :sas_2201
	  rename_column :actuarial_science_second_years, :sma_2231, :sas_2290
  end
end
