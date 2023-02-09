class ChangeGroupInStudent < ActiveRecord::Migration
  def change
	  rename_column :students, :group, :batch
  end

end
