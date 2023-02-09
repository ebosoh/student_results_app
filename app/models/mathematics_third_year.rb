class MathematicsThirdYear < ActiveRecord::Base
  belongs_to :student
  
  validates_uniqueness_of :admission_no
end
