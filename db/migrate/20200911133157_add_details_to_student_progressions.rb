class AddDetailsToStudentProgressions < ActiveRecord::Migration
  def change
    add_column :student_progressions, :details, :text
  end
end
