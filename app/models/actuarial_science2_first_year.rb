class ActuarialScience2FirstYear < ActiveRecord::Base

belongs_to :student

 include ActionView::Helpers::NumberHelper	
 
 #delegate :mean, to: :actuarial_science_second_year
 
 
 
 #belongs_to :actuarial_science_second_year
  before_save :average_first_year
  validates_uniqueness_of :admission_no
  
  #delegate :mean, to: :actuarial_science_second_year
  
 #validates :mean, presence: true, format: { with: /\A\d+(?:\.\d{3})?\z/ }, numericality: { greater_than: 0, less_than: 100} was for testing
  
     
  
  def gradeone
	  
	  case self.sma_1117
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
  
  
  def gradethree
	  
	  case self.igs_1104
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
	  
	  case self.igs_1201
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
  
  def gradesix
	  
	  case self.bec_1101
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
	  
	  case self.bba_2201
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
	  
	  case self.bcm_1101
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
  
  
  
  def gradeten
	  
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
  
  
  def gradeeleven
	  
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
  
  
  
 def gradetwelve
	  
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
  
  def gradethirteen
	  
	  case self.bec_1204
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
	  
	  case self.sma_1218
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
	  
	  case self.mean
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
	 self.admission_no = @actuarial_science_first2_year.student.admission_no
 end
 
   
def average_first_year
	
	self.mean = "#{(sma_1117 + sas_1190 + igs_1104 + igs_1201 + hns_1100 + bec_1101 + sas_1101 + sas_1201 + sas_1250 + sas_1290 + bec_1204 + sma_1218)/12}"# After  2019 
	#self.mean = "#{(bsm_2114 + hrd_2101 + bsm_1102 + sas_1101 + sas_1190 + sma_2101 + hns_1100 + bsm_1204 + sas_1201 + sas_1250 + sma_2102 + sas_1290 + igs_1102 + igs_1104)/14}"# Before 2019
end

#def average_first_first
	#self.cumulative_mean = "#{average_first_year}"
#end


def current_date
	Date.today.try(:strftime, ("%d %B %Y"))
end

  end

