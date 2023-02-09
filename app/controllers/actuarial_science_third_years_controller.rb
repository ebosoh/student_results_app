
require "odf-report"
require 'nokogiri'
require 'zip'




class ActuarialScienceThirdYearsController < ApplicationController
def print            
    @actuarial_science_third_year = ActuarialScienceThirdYear.find(params[:id])   
        	
	report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'actuarial_science_third_year.odt')) do |r|

	r.add_field "NAME",         			@actuarial_science_third_year.student.name
	r.add_field "ADMISSION_NO",			@actuarial_science_third_year.admission_no
	r.add_field "ACADEMIC_YEAR",         	@actuarial_science_third_year.academic_year
	r.add_field "DATE",				@actuarial_science_third_year.current_date 	
	r.add_field "SAS_3101",         		@actuarial_science_third_year.gradeone
	r.add_field "SAS_3102",         		@actuarial_science_third_year.gradetwo
	r.add_field "SAS_3103",         		@actuarial_science_third_year.gradethree
	r.add_field "SAS_3104",         		@actuarial_science_third_year.gradefour
	r.add_field "SAS_3190",         		@actuarial_science_third_year.gradefive
	r.add_field "SAS_3191",         		@actuarial_science_third_year.gradesix
	r.add_field "SAS_3201",         		@actuarial_science_third_year.gradeseven
	r.add_field "SAS_3202",         		@actuarial_science_third_year.gradeeight
	r.add_field "SAS_3203",         		@actuarial_science_third_year.gradenine
	r.add_field "SAS_3204",         		@actuarial_science_third_year.gradeten
	r.add_field "SAS_3250",         		@actuarial_science_third_year.gradeeleven
	r.add_field "SAS_3290",			@actuarial_science_third_year.gradetwelve
	
	r.add_field "MEAN",         			@actuarial_science_third_year.gradethirteen
	#r.add_field "CUMULATIVE_MEAN",      	@actuarial_science_third_year.average_first_second_third_years
	r.add_field "CURRENT_MEAN",      	 	@actuarial_science_third_year.average_third_year
	r.add_field "RECOMMENDATION",        	@actuarial_science_third_year.recommendation
	
	 end
  end
  
     
  def show 	
    	    
  @actuarial_science_third_year = ActuarialScienceThirdYear.find(params[:id]) 
         
  send_data print.generate,
  		    type: 'application/vnd.oasis.opendocument.text',
             disposition: 'inline',
             filename:  "#{@actuarial_science_third_year.student.name}" +"_" "#{@actuarial_science_third_year.student.admission_no}.odt"
	         
         end
     end