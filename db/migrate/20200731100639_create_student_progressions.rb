class CreateStudentProgressions < ActiveRecord::Migration
  def change
    create_table :student_progressions do |t|
      t.references :student, index: true, foreign_key: true
      t.string :academic_year
      t.string :year_of_study
      t.string :semester
      t.string :status

      t.timestamps null: false
    end
  end
end
