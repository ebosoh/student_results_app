class LeatherTechnologySecondYear < ActiveRecord::Base
   belongs_to :student
  before_save :average_second_year#, :average_first_second
  
  validates_uniqueness_of :admission_no
  
  
 #validates :mean, presence: true, format: { with: /\A\d+(?:\.\d{3})?\z/ }, numericality: { greater_than: 0, less_than: 100} was for testing
  
  #def my_attribute
  #ApplicationController.helpers.number_with_precision(read_attribute(:my_attribute))
#end
  
    
  
  
  def gradeone
	  
	  case self.sch_2102
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
	  
	  case self.slt_2101
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
	  
	  case self.slt_2102
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
	  
	  case self.slt_2103
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
	  
	  case self.slt_2104
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
	  
	  case self.slt_2105
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
	  
	  case self.slt_2201
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
	  
	  case self.sch_2202
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
	  
	  case self.slt_2202
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
	  
	  case self.slt_2203
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
	  
	  case self.sch_2203
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
  
  
  
    
 
 
   
def average_second_year
	
	self.mean = "#{(sch_2102 + slt_2101 + slt_2102 + slt_2103 + slt_2104 + slt_2105 + slt_2201 + sch_2202 + slt_2202 + slt_2203 + sch_2203)/11}"
end

#def average_first_second
	#self.cumulative_mean = "#{}"
#end

def current_date
	Date.today.try(:strftime, ("%d %B %Y"))
end

  end
