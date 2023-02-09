class MathematicsSecondYear < ActiveRecord::Base
 belongs_to :student
  before_save :average_second_year#, :average_first_first
  
  validates_uniqueness_of :admission_no
    
 #validates :mean, presence: true, format: { with: /\A\d+(?:\.\d{3})?\z/ }, numericality: { greater_than: 0, less_than: 100} was for testing
  
  #def my_attribute
  #ApplicationController.helpers.number_with_precision(read_attribute(:my_attribute))
#end
  
  
  
  def gradeone
	  
	  case self.sas_2101
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
	  
	  case self.ccs_2102
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
	  
	  case self.igs_2101
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
  
  
  def gradefive
	  
	  case self.sma_2112
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
	  
	  case self.sma_2149
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
	  
	  case self.sma_2119
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
	  
	  case self.sma_2215
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
	  
	  case self.sma_2224
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
	  
	  case self.sma_2232
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
	  
	  case self.igs_2202
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
	  
	  case self.sma_2164
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

 def cumulative_mean
      MathematicsSecondYear.all.map do |model|
            MathematicsFirstYear.all.map do |other_model|
              (model.mean + other_model.mean) / 2.0
            end
          end
    
     
     
end
 
 
   
def average_second_year
	
	self.mean = "#{(sas_2101+ ccs_2102+ igs_2101+ sma_1218+ sma_2112+ sma_2149+ sma_2119+ sma_2215+ sma_2224+ sma_2232+ igs_2202+ sma_2164)/12}"
end

#def average_first_first
	#self.cumulative_mean = "#{average_first_year}"
#end

def current_date
	Date.today.try(:strftime, ("%d %B %Y"))
end

  end
