class RemoveColFromIcThird < ActiveRecord::Migration
  def change
	  remove_column :industrial_chemistry_third_years, :sch_3399
  end
end
