class AddColumnOnPolymerFourth < ActiveRecord::Migration
  def change
	  add_column :polymer_chemistry_fourth_years, :scp_3399, :integer, :after => :igs_4101
  end
end
