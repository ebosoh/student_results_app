class FixCurrentMeanInLeatherTechFirstYears < ActiveRecord::Migration
  def change
    rename_column :leather_technology_first_years, :current_mean, :mean
  end
end
