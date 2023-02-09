class AddAcademicYearToActuarialScience2FirstYear < ActiveRecord::Migration
  def change
    add_column :actuarial_science2_first_years, :academic_year, :string
  end
end
