class AddAppealDateToStudentProgressions < ActiveRecord::Migration
  def change
    add_column :student_progressions, :appeal_date, :date
  end
end
