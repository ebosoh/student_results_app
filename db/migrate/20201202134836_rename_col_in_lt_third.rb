class RenameColInLtThird < ActiveRecord::Migration
  def change
	  rename_column :leather_technology_third_years, :slt_3106, :sch_3106
  end
end
