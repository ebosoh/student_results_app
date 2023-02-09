class AddCauseToStudentProgressions < ActiveRecord::Migration
  def change
    add_column :student_progressions, :cause, :string
  end
end
