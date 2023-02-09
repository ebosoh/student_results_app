class RemoveRecommendation < ActiveRecord::Migration
  def change
	  remove_column :industrial_chemistry_fourth_years, :recommendation
  end
end
