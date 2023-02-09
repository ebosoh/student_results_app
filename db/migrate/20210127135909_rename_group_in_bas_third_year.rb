class RenameGroupInBasThirdYear < ActiveRecord::Migration
  def change
	  rename_column :actuarial_science_third_years, :group, :grouping
  end
end
