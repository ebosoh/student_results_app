class Cohort < ActiveRecord::Base
	has_many :students
	validates_presence_of :name
end
