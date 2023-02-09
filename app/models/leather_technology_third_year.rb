class LeatherTechnologyThirdYear < ActiveRecord::Base
   belongs_to :student
  before_save :average_third_year#, :average_first_second_third
  
  validates_uniqueness_of :admission_no
  
  
 #validates :mean, presence: true, format: { with: /\A\d+(?:\.\d{3})?\z/ }, numericality: { greater_than: 0, less_than: 100} was for testing
  
  #def my_attribute
  #ApplicationController.helpers.number_with_precision(read_attribute(:my_attribute))
#end
  
    
  
  
  def gradeone
	  
	  case self.slt_3101
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
	  
	  case self.slt_3102
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
	  
	  case self.slt_3103
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
	  
	  case self.slt_3104
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
	  
	  case self.slt_3105
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
	  
	  case self.sch_3106
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
	  
	  case self.igs_3101
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
	  
	  case self.slt_3201
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
	  
	  case self.slt_3202
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
	  
	  case self.slt_3203
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
	  
	  case self.slt_3204
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
	  
	  case self.slt_3205
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
	  
	  case self.igs_3202
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
   
    
 
 
   
def average_third_year
	
	self.mean = "#{(slt_3101 + slt_3102 + slt_3103 + slt_3104 + slt_3105 + sch_3106 + slt_3201 + slt_3202 + slt_3203 + slt_3204 + slt_3205)/11}"
end

#def average_first_second_third
	#self.cumulative_mean = "#{}"
#end
def current_date
	Date.today.try(:strftime, ("%d %B %Y"))
end



  end
