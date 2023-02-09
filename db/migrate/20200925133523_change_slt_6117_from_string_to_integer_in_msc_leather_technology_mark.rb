class ChangeSlt6117FromStringToIntegerInMscLeatherTechnologyMark < ActiveRecord::Migration
  def change
	  change_column :msc_leather_technology_marks, :slt_6117, :integer
  end
end
