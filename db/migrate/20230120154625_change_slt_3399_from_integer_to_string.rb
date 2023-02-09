class ChangeSlt3399FromIntegerToString < ActiveRecord::Migration
  def change
    change_column :leather_technology_fourth_years, :slt_3399, :string
  end
end
