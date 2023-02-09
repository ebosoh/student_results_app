class RenameCurrentMeanToMeanInIndustrialChemistryFirstYears < ActiveRecord::Migration
  def change
    rename_column :industrial_chemistry_first_years, :current_mean, :mean
  end
end
