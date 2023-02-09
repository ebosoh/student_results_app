class LeatherStageOne < ActiveRecord::Base
    belongs_to :student
  before_save :average_stage_one#, :average_first_first
  
  validates_uniqueness_of :admission_no
  
  
 #validates :mean, presence: true, format: { with: /\A\d+(?:\.\d{3})?\z/ }, numericality: { greater_than: 0, less_than: 100} was for testing
  
  #def my_attribute
  #ApplicationController.helpers.number_with_precision(read_attribute(:my_attribute))
#end
  
  
  
  
  
  def gradeone
	  
	  case self.slt_0101
 when 80..100
 "A" 
 when 70..79
 "B" 
when 60..69
"C" 
when 50..59
"D" 
      else 
		  "F"
      end
      end 
  
  
    def gradetwo
	  
        case self.igs_0201
   when 80..100
   "A" 
   when 70..79
   "B" 
  when 60..69
  "C" 
  when 50..59
  "D" 
        else 
            "F"
        end
        end 


        def gradethree
	  
            case self.slt_0102
       when 80..100
       "A" 
       when 70..79
       "B" 
      when 60..69
      "C" 
      when 50..59
      "D" 
            else 
                "F"
            end
            end 


            def gradefour
	  
                case self.tdt_0104
           when 80..100
           "A" 
           when 70..79
           "B" 
          when 60..69
          "C" 
          when 50..59
          "D" 
                else 
                    "F"
                end
                end        
    
                def gradefive
	  
                    case self.slt_0103
               when 80..100
               "A" 
               when 70..79
               "B" 
              when 60..69
              "C" 
              when 50..59
              "D" 
                    else 
                        "F"
                    end
                    end 


                    def gradesix
	  
                        case self.tdt_0103
                   when 80..100
                   "A" 
                   when 70..79
                   "B" 
                  when 60..69
                  "C" 
                  when 50..59
                  "D" 
                        else 
                            "F"
                        end
                        end 


                        def gradeseven
	  
                            case self.slt_0104
                       when 80..100
                       "A" 
                       when 70..79
                       "B" 
                      when 60..69
                      "C" 
                      when 50..59
                      "D" 
                            else 
                                "F"
                            end
                            end 

                                                           
                                
                                def gradeeight
	  
                                    case self.slt_0105
                               when 80..100
                               "A" 
                               when 70..79
                               "B" 
                              when 60..69
                              "C" 
                              when 50..59
                              "D" 
                                    else 
                                        "F"
                                    end
                                    end 

                                    def gradenine
	  
                                        case self.slt_0106
                                   when 80..100
                                   "A" 
                                   when 70..79
                                   "B" 
                                  when 60..69
                                  "C" 
                                  when 50..59
                                  "D" 
                                        else 
                                            "F"
                                        end
                                        end 


                                        def gradeten
	  
                                            case self.slt_0107
                                       when 80..100
                                       "A" 
                                       when 70..79
                                       "B" 
                                      when 60..69
                                      "C" 
                                      when 50..59
                                      "D" 
                                            else 
                                                "F"
                                            end
                                            end 
		
    def gradeeleven
	  
        case self.slt_0108
        when 80..100
    "A" 
        when 70..79
    "B" 
            when 60..69
    "C" 
        when 50..59
    "D" 
        else 
    "F"
    end
    end        

    def gradetwelve
	  
        case self.hns_1100
        when 80..100
    "A" 
        when 70..79
    "B" 
            when 60..69
    "C" 
        when 50..59
    "D" 
        else 
    "F"
    end
    end    
        
        
    def gradethirteen
	  
        case self.mean
        when 80..100
    "A" 
        when 70..79
    "B" 
            when 60..69
    "C" 
        when 50..59
    "D" 
        else 
    "F"
    end
    end                                         	



  
  
 def average_stage_one
	
	
	self.mean = "#{(slt_0101 + igs_0201 + slt_0102 + tdt_0104 + slt_0103 + tdt_0103 + slt_0104 + slt_0105 + slt_0106 + slt_0107 + slt_0108)/11}"

	end

#def average_first_first
	#self.cumulative_mean = "#{average_first_year}"
#end
def current_date
	Date.today.try(:strftime, ("%d %B %Y"))
end
end
