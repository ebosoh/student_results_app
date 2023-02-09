require "odf-report"
require 'nokogiri'
require 'zip'



class ActuarialScienceSecondYearsController < ApplicationController
	
	include ActuarialScienceFirstYearsHelper 

def print            
    @actuarial_science_second_year = ActuarialScienceSecondYear.find(params[:id])   
    
    
	
	report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'actuarial_science_second_year.odt')) do |r|


	r.add_field "NAME",         			@actuarial_science_second_year.student.name
	r.add_field "ADMISSION_NO",			@actuarial_science_second_year.admission_no
	r.add_field "ACADEMIC_YEAR",         	@actuarial_science_second_year.academic_year
	r.add_field "DATE",				@actuarial_science_second_year.current_date 
	r.add_field "SAS_2101",         		@actuarial_science_second_year.gradeone
	r.add_field "SAS_2190",         		@actuarial_science_second_year.gradetwo
	r.add_field "SAS_2191",         		@actuarial_science_second_year.gradethree
	r.add_field "SAS_2192",         		@actuarial_science_second_year.gradefour
	r.add_field "SMA_2110",         		@actuarial_science_second_year.gradefive
	r.add_field "SAS_2291",         		@actuarial_science_second_year.gradesix
	r.add_field "SMA_3261",         		@actuarial_science_second_year.gradeseven
	r.add_field "SMA_2232",         		@actuarial_science_second_year.gradeeight
	r.add_field "BSM_1101",         		@actuarial_science_second_year.gradenine
	r.add_field "SAS_2201",         		@actuarial_science_second_year.gradeten
	r.add_field "SAS_2290",         		@actuarial_science_second_year.gradeeleven
	r.add_field "MEAN",         			@actuarial_science_second_year.gradetwelve
	r.add_field "CURRENT_MEAN",         		@actuarial_science_second_year.average_second_year
	r.add_field "CUMULATIVE_MEAN",      	@actuarial_science_second_year.average_first_and_second_year
	r.add_field "RECOMMENDATION",        	@actuarial_science_second_year.recommendation
	
	 end
  
end
  
    
  
  def show 	

    
	    
  @actuarial_science_second_year = ActuarialScienceSecondYear.find(params[:id]) 
         
  send_data print.generate,
  		    type: 'application/vnd.oasis.opendocument.text',
             disposition: 'inline',
             filename:  "#{@actuarial_science_second_year .student.name}" +"_" "#{@actuarial_science_second_year .student.admission_no}.odt"
	         
         end
     end
