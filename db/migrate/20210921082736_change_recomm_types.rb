class ChangeRecommTypes < ActiveRecord::Migration
  def up
	  change_column :industrial_chemistry_third_years, :recommendation, :text
  end
  
  def down
	  change_column :industrial_chemistry_third_years, :recommendation, :string
  end
  
end
