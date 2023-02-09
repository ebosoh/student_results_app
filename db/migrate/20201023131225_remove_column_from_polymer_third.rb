class RemoveColumnFromPolymerThird < ActiveRecord::Migration
  def change
	  remove_column :polymer_chemistry_third_years, :scp_3399
	  remove_column :polymer_chemistry_third_years, :string
	  
  end
end
