class ChangeFieldInLtFirst < ActiveRecord::Migration
  def change
	  rename_column :leather_technology_first_years, :bsm_2114, :igs_1104
  end
end
