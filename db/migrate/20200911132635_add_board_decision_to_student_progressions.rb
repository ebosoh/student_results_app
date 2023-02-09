class AddBoardDecisionToStudentProgressions < ActiveRecord::Migration
  def change
    add_column :student_progressions, :board_decision, :string
  end
end
