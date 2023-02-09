class AddGroupToBasThirdYear < ActiveRecord::Migration
  def change
	  add_column :actuarial_science_third_years, :group, :string
  end
end
