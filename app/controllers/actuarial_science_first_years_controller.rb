
require "odf-report"
require 'nokogiri'
require 'zip'


class ActuarialScienceFirstYearsController < ApplicationController
		
  
  def print            
    @actuarial_science_first_year = ActuarialScienceFirstYear.find(params[:id])   
    
    
	
	report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'actuarial_science_first_year.odt')) do |r|


	r.add_field "NAME",         	@actuarial_science_first_year.student.name
	r.add_field "ADMISSION_NO",		@actuarial_science_first_year.admission_no
	r.add_field "ACADEMIC_YEAR",    @actuarial_science_first_year.academic_year
	r.add_field "DATE",				@actuarial_science_first_year.current_date 
	
	r.add_field "BSM_2114",         		@actuarial_science_first_year.gradeone
	r.add_field "HRD_2101",         		@actuarial_science_first_year.gradetwo
	r.add_field "BSM_1102",         		@actuarial_science_first_year.gradethree
	r.add_field "SAS_1101",         		@actuarial_science_first_year.gradefour
	r.add_field "SAS_1190",         		@actuarial_science_first_year.gradefive
	r.add_field "SMA_2101",         		@actuarial_science_first_year.gradesix
	r.add_field "HNS_1100",         		@actuarial_science_first_year.gradeseven
	r.add_field "BSM_1204",         		@actuarial_science_first_year.gradeeight
	r.add_field "SAS_1201",         		@actuarial_science_first_year.gradenine
	r.add_field "SAS_1250",         		@actuarial_science_first_year.gradeten
	r.add_field "SMA_2102",         		@actuarial_science_first_year.gradeeleven
	r.add_field "SAS_1290",			@actuarial_science_first_year.gradefifteen
	r.add_field "MEAN",         			@actuarial_science_first_year.gradethirteen
	#r.add_field "CUMULATIVE_MEAN",      	@actuarial_science_first_year.average_first_first
	r.add_field "CURRENT_MEAN",      	 	@actuarial_science_first_year.average_first_year
	r.add_field "RECOMMENDATION",        	@actuarial_science_first_year.recommendation
	
	 end
  
end
  
    
  
  def show 	

    
	    
  @actuarial_science_first_year = ActuarialScienceFirstYear.find(params[:id]) 
         
  send_data print.generate,
  		    type: 'application/vnd.oasis.opendocument.text',
             disposition: 'inline',
             filename:  "#{@actuarial_science_first_year .student.name}" +"_" "#{@actuarial_science_first_year .student.admission_no}.odt"
	         
         end
     end
     
     
   