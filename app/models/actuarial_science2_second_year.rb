class ActuarialScience2SecondYear < ActiveRecord::Base
    belongs_to :student
    include ActionView::Helpers::NumberHelper	
 
    #delegate :mean, to: :actuarial_science_second_year
    
    
    
    #belongs_to :actuarial_science_second_year
     before_save :average_second_year
     validates_uniqueness_of :admission_no
     
     #delegate :mean, to: :actuarial_science_second_year
     
    #validates :mean, presence: true, format: { with: /\A\d+(?:\.\d{3})?\z/ }, numericality: { greater_than: 0, less_than: 100} was for testing
     
        
     
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
         
         case self.sas_2291
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
         
         case self.sas_2190
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
         
         case self.sas_2192
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
         
         case self.sas_2191
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
         
         case self.sma_2110
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
         
         case self.sma_2118
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
     
     
     def gradenine
         
         case self.sas_2201
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
         
         case self.sas_2290
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
     
     
     
    def gradetwelve
         
         case self.sma_3261
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
         
         case self.igs_2102
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
        self.admission_no = @actuarial_science2_second_year.student.admission_no
    end
    
      
   def average_second_year
       
       self.mean = "#{(sas_2101 + sas_2291 + sas_2290  + sas_2192 + sas_2191 + sma_2110 + sma_2118 + igs_2101  + sas_2201 + sas_2290 + sma_2232 + sma_3261 + igs_2102)/13}"# After  2019 
       #self.mean = "#{(bsm_2114 + hrd_2101 + bsm_1102 + sas_1101 + sas_1190 + sma_2101 + hns_1100 + bsm_1204 + sas_1201 + sas_1250 + sma_2102 + sas_1290 + igs_1102 + igs_1104)/14}"# Before 2019
   end
   
   #def average_first_first
       #self.cumulative_mean = "#{average_first_year}"
   #end
   
   
   def current_date
       Date.today.try(:strftime, ("%d %B %Y"))
   end
   
     end
   
   