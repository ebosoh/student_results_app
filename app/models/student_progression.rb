class StudentProgression < ActiveRecord::Base
  belongs_to :student
  
  def status_enum
	[['Academic Leave'], ['Discontinuation'], ['Suspension'], ['Abscondment'], ['External Repeat'], ['Deregistration'], ['Transfer'], ['Deceased'], ['Re-admission'], ['Incomplete']]
end 
    
    
end
