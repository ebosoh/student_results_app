class IndustrialChemistryFirstYear < ActiveRecord::Base
	
  belongs_to :student
  before_save :average_first_year#, :average_first_first
  
  validates_uniqueness_of :admission_no
  
  
 #validates :mean, presence: true, format: { with: /\A\d+(?:\.\d{3})?\z/ }, numericality: { greater_than: 0, less_than: 100} was for testing
  
  #def my_attribute
  #ApplicationController.helpers.number_with_precision(read_attribute(:my_attribute))
#end
  
  
  
  
  
  def gradeone
	  
	  case self.sch_1101 
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
	  
	  case self.sch_1102
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
	  
	  case self.sch_1103
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
	  
	  case self.sma_1108
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
  
  def gradesix
	  
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
	  
	  case self.sch_1201
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
	  
	  case self.sch_1202
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
	  
	  case self.sch_1203
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
	  
	  case self.ccs_1101
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
  
  
  
  def gradethirteen
	  
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

  def gradefourteen
	  
	  case self.igs_1102
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
  
  def current_date
	Date.today.try(:strftime, ("%d %B %Y"))
end


def gradesixteen
	  
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
  
 
def gradeseventeen
	  
	  case self.ccs_1201
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
    
 
 
   
def average_first_year
	
	if admission_no.include?( "2018")
	
	self.mean = "#{( sch_1101 + sch_1102 + sch_1103 + sma_1108 + sma_1117 + hns_1100 + sch_1201 + sch_1202 + sch_1203 + ccs_1101 + sma_1218 + sas_1201)/12}" # BEFORE 2019
	
	if admission_no.include?( "2017")
	
	self.mean = "#{( sch_1101 + sch_1102 + sch_1103 + sma_1108 + sma_1117 + hns_1100 + sch_1201 + sch_1202 + sch_1203 + ccs_1101 + sma_1218 + sas_1201)/12}" #BEFORE 2019
	
	
	if admission_no.include?( "2016")
	
		
	self.mean = "#{( sch_1101 + sch_1102 + sch_1103 + sma_1108 + sma_1117 + hns_1100 + sch_1201 + sch_1202 + sch_1203 + ccs_1101 + sma_1218 + sas_1201)/12}" #BEFORE 2019
	
	
	elsif admission_no.include?("2020")
		
	self.mean = "#{(sch_1101+ sch_1102 + sma_1108 + sma_1117 + hns_1100 + sch_1201 + sch_1202 + sch_1203 + ccs_1201 + sma_1218 + sas_1201 + igs_1104 + igs_1201 + sch_1103)/14}"
		
	else
		
	self.mean = "#{( sch_1101 + sch_1102 + sch_1103 + sma_1108 + sma_1117 + hns_1100 + sch_1201 + sch_1202 + sch_1203 + ccs_1101 + sma_1218 + sas_1201 + igs_1102 + igs_1104)/14}" # Before 2019
	end
	
end

#def average_first_first
	#self.cumulative_mean = "#{average_first_year}"
#end

  
end
end
end
