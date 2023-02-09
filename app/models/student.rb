class Student < ActiveRecord::Base
	belongs_to :programme
	belongs_to :cohort
	has_many :actuarial_science_first_years
	has_many :actuarial_science2_first_years
	has_many :industrial_chemistry_first_years
	has_many :polymer_chemistry_first_years
	has_many :leather_technology_first_years
	has_many :mathematics_first_years
	
	has_many :actuarial_science_second_years
	has_many :actuarial_science2_second_years
	has_many :industrial_chemistry_second_years
	has_many :polymer_chemistry_second_years
	has_many :leather_technology_second_years
	has_many :mathematics_second_years
	
	
	has_many :actuarial_science_third_years
	has_many :industrial_chemistry_third_years
	has_many :polymer_chemistry_third_years
	has_many :leather_technology_third_years
	has_many :mathematics_third_years
	
	has_many :actuarial_science_fourth_years
	has_many :industrial_chemistry_fourth_years
	has_many :polymer_chemistry_fourth_years
	has_many :leather_technology_fourth_years
	has_many :mathematics_fourth_years

	has_many :leather_stage_ones
	has_many :leather_stage_twos
	
	has_many :msc_leather_technology_marks
	
	validates_uniqueness_of :admission_no
	
	
	
	
	
	
	
	
	end
	

