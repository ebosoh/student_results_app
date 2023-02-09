class FixCmInPolymerFirstYears < ActiveRecord::Migration
  def change
    rename_column :polymer_chemistry_first_years, :current_mean, :mean
  end
end
