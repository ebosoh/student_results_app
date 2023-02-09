class AddFieldsAgainToActuarialFirsts < ActiveRecord::Migration
  def change
	add_column :actuarial_science_first_years, :mean, :decimal, :precision => 2, :scale => 3
	  add_column :actuarial_science_first_years, :cumulative_mean, :decimal, :precision => 2, :scale => 3
	  add_column :actuarial_science_first_years, :recommendation, :string
	  
  end
end
