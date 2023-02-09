class FixGroupTypeInBasThirdYear < ActiveRecord::Migration
  def change
	  change_column :actuarial_science_third_years, :group, :date
  end
end
