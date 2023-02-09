class AddDecisionDateToStudentProgressions < ActiveRecord::Migration
  def change
    add_column :student_progressions, :decision_date, :date
  end
end
