class FixCmInPolymerFourth < ActiveRecord::Migration
  def change
    rename_column :polymer_chemistry_fourth_years, :current_mean, :mean
  end
end
