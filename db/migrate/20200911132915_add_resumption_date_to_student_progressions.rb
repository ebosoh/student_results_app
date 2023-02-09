class AddResumptionDateToStudentProgressions < ActiveRecord::Migration
  def change
    add_column :student_progressions, :resumption_date, :date
  end
end
