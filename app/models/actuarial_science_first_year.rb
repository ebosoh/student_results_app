
class ActuarialScienceFirstYear < ActiveRecord::Base
 include ActionView::Helpers::NumberHelper	
 
 #delegate :mean, to: :actuarial_science_second_year
 
 
 belongs_to :student 
 #belongs_to :actuarial_science_second_year
  before_save :average_first_year #:average_first_first
  validates_uniqueness_of :admission_no
  
  #delegate :mean, to: :actuarial_science_second_year
  
 #validates :mean, presence: true, format: { with: /\A\d+(?:\.\d{3})?\z/ }, numericality: { greater_than: 0, less_than: 100} was for testing
  
     
  
  def gradeone
	  
	  case self.bsm_2114 
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 40..49
"D" 
      else 
		  "F"
      end
      end 
  
  
  def gradetwo
	  
	  case self.hrd_2101
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 40..49
"D" 
      else 
		  "F"
      end
      end 
  
  
  def gradethree
	  
	  case self.bsm_1102
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 40..49
"D" 
      else 
		  "F"
      end
      end 
  
  
  def gradefour
	  
	  case self.sas_1101
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 40..49
"D" 
      else 
		  "F"
      end
      end 
  
  
  def gradefive
	  
	  case self.sas_1190
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 40..49
"D" 
      else 
		  "F"
      end
      end 
  
  def gradesix
	  
	  case self.sma_2101
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 40..49
"D" 
      else 
		  "F"
      end
      end 
  
  
  
  def gradeseven
	  
	  case self.hns_1100
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 40..49
"D" 
      else 
		  "F"
      end
      end 
  
  
  def gradeeight
	  
	  case self.bsm_1204
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 40..49
"D" 
      else 
		  "F"
      end
      end 
  
  
  def gradenine
	  
	  case self.sas_1201
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 40..49
"D" 
      else 
		  "F"
      end
      end 
  
  
  
  def gradeten
	  
	  case self.sas_1250
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 40..49
"D" 
      else 
		  "F"
      end
      end 
  
  
  def gradeeleven
	  
	  case self.sma_2102
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 40..49
"D" 
      else 
		  "F"
      end
      end 
  
  
  
 def gradethirteen
	  
	  case self.mean_1
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 40..49
"D" 
      else 
		  "F"
      end
      end 
  
  
  
  def gradefourteen
	  
	  case self.cumulative_mean
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 40..49
"D" 
      else 
		  "F"
      end
      end 

  def gradefifteen
	  
	  case self.sas_1290
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 40..49
"D" 
      else 
		  "F"
      end
      end 
  
  
  
 
 def adm_no
	 self.admission_no = @actuarial_science_first_year.student.admission_no
 end
 
   
def average_first_year
	
	self.mean_1 = "#{(bsm_2114 + hrd_2101 + bsm_1102 + sas_1101 + sas_1190 + sma_2101 + hns_1100 + bsm_1204 + sas_1201 + sas_1250 + sma_2102 + sas_1290)/12}"# Before 2019
	#self.mean = "#{(bsm_2114 + hrd_2101 + bsm_1102 + sas_1101 + sas_1190 + sma_2101 + hns_1100 + bsm_1204 + sas_1201 + sas_1250 + sma_2102 + sas_1290 + igs_1102 + igs_1104)/14}"# After  2019
end

#def average_first_first
	#self.cumulative_mean = "#{average_first_year}"
#end


def current_date
	Date.today.try(:strftime, ("%d %B %Y"))
end

  end
  





