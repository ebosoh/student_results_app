class ModifyActuarialFirstyear < ActiveRecord::Migration
  def change
		add_column :actuarial_science_first_years, :sas_1290, :integer, :after => :sma_2102
		rename_column :actuarial_science_first_years, :szl_2111, :hns_1100
  end
end
