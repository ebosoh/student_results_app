class ChangeAdmissionNoFromIntegerToString < ActiveRecord::Migration
  def change
	  change_column :students, :admission_no, :string
  end
end
