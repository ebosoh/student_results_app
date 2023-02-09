
require "odf-report"
require 'nokogiri'
require 'zip'




class ActuarialScienceFourthYearsController < ApplicationController

def print            
    @actuarial_science_fourth_year = ActuarialScienceFourthYear.find(params[:id])   
        	
	report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'actuarial_science_fourth_year.odt')) do |r|

	r.add_field "NAME",         			@actuarial_science_fourth_year.student.name
	r.add_field "ADMISSION_NO",			@actuarial_science_fourth_year.admission_no
	r.add_field "ACADEMIC_YEAR",         	@actuarial_science_fourth_year.academic_year	
	r.add_field "BBA_2201",         		@actuarial_science_fourth_year.gradeone
	r.add_field "SAS_4101",         		@actuarial_science_fourth_year.gradetwo
	r.add_field "SAS_4102",         		@actuarial_science_fourth_year.gradethree
	r.add_field "SAS_4190",         		@actuarial_science_fourth_year.gradefour
	r.add_field "SAS_4191",         		@actuarial_science_fourth_year.gradefive
	r.add_field "SAS_4199",         		@actuarial_science_fourth_year.gradesix
	r.add_field "SAS_4201",         		@actuarial_science_fourth_year.gradeseven
	r.add_field "SAS_4290",         		@actuarial_science_fourth_year.gradeeight
	r.add_field "SAS_4291",         		@actuarial_science_fourth_year.gradenine
	r.add_field "SAS_4292",         		@actuarial_science_fourth_year.gradeten
	r.add_field "SAS_3399",         		@actuarial_science_fourth_year.sas_3399	
	r.add_field "MEAN",         			@actuarial_science_fourth_year.gradeeleven
	#r.add_field "CUMULATIVE_MEAN",      	@actuarial_science_fourth_year.average_first_second_third_fourth
	r.add_field "CURRENT_MEAN",      	 	@actuarial_science_fourth_year.average_fourth_year
	r.add_field "RECOMMENDATION",        	@actuarial_science_fourth_year.recommendation
	
	 end
  end
  
     
  def show 	
    	    
  @actuarial_science_fourth_year = ActuarialScienceFourthYear.find(params[:id]) 
         
  send_data print.generate,
  		    type: 'application/vnd.oasis.opendocument.text',
             disposition: 'inline',
             filename:  "#{@actuarial_science_fourth_year.student.name}" +"_" "#{@actuarial_science_fourth_year.student.admission_no}.odt"
	         
         end
     end