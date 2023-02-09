class MscLeatherTechnologyMark < ActiveRecord::Base
	belongs_to :student
	before_save :average
	
	validates_uniqueness_of :admission_no

def gradeone
	  
	  case self.slt_6100 
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 



def gradetwo
	  
	  case self.slt_6101 
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 

def gradethree
	  
	  case self.slt_6102 
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 


def gradefour
	  
	  case self.slt_6103 
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 



def gradefive
	  
	  case self.slt_6104 
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 

def gradesix
	  
	  case self.slt_6105
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 


def gradeseven
	  
	  case self.slt_6106
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 



def gradeeight
	  
	  case self.slt_6107
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 

def gradenine
	  
	  case self.slt_6108
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 


def gradeten
	  
	  case self.slt_6109
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 


def gradeeleven
	  
	  case self.slt_6110
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 


def gradetwelve
	  
	  case self.slt_6111
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 


def gradethirteen
	  
	  case self.slt_6112
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 


def gradefourteen
	  
	  case self.slt_6113
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 


def gradefifteen
	  
	  case self.slt_6115
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 


def gradesixteen
	  
	  case self.slt_6116
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end 


def gradeseventeen
	  
	  case self.slt_6117
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end


def gradeeighteen
	  
	  case self.slt_6118
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end

def gradenineteen
	  
	  case self.slt_6200
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end
      
      
      
      def gradetwenty
	  
	  case self.mean
 when 70..100
 "A" 
 when 60..69
 "B" 
when 50..59
"C" 
when 0..49
"F" 
      else 
		  "INC"
      end
      end



def current_date
	Date.today.try(:strftime, ("%d %B %Y"))
end



def average
	self.mean = "#{(self.slt_6100 + self.slt_6101 + self.slt_6102 + self.slt_6103 + self.slt_6104 + self.slt_6105 + self.slt_6106 + self.slt_6107 + self.slt_6108 + self.slt_6109 + self.slt_6110 + self.slt_6111 + self.slt_6112 + self.slt_6116 + self.slt_6117 + self.slt_6118 )/16}"
	end



end
