require "odf-report"
require 'nokogiri'
require 'zip'


class LeatherTechnologyFourthYearsController < ApplicationController
def print            
    @leather_technology_fourth_year = LeatherTechnologyFourthYear.find(params[:id])   
        	
	report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'leather_technology_fourth_year.odt')) do |r|

	r.add_field "NAME",         			@leather_technology_fourth_year.student.name
	r.add_field "ADMISSION_NO",			@leather_technology_fourth_year.admission_no
	r.add_field "ACADEMIC_YEAR",         	@leather_technology_fourth_year.academic_year
	r.add_field "DATE",				@leather_technology_fourth_year.current_date
	r.add_field "BBA_2201",   	      		@leather_technology_fourth_year.gradeone
	r.add_field "SLT_4101",         		@leather_technology_fourth_year.gradetwo
	r.add_field "SLT_4102",         		@leather_technology_fourth_year.gradethree
	r.add_field "SLT_4103",         		@leather_technology_fourth_year.gradefour
	r.add_field "SLT_4199",         		@leather_technology_fourth_year.gradefive
	r.add_field "IGS_4101",         		@leather_technology_fourth_year.gradesix
	r.add_field "SLT_3399",         		@leather_technology_fourth_year.gradeseven
	r.add_field "SLT_4299",         		@leather_technology_fourth_year.gradeeight
	r.add_field "SLT_4201",         		@leather_technology_fourth_year.gradenine
	r.add_field "SLT_4202",         		@leather_technology_fourth_year.gradeten
	r.add_field "SLT_2410",			@leather_technology_fourth_year.gradeeleven
	r.add_field "SLT_4204",			@leather_technology_fourth_year.gradetwelve
	r.add_field "IGS_4202",			@leather_technology_fourth_year.gradethirteen
		
	r.add_field "MEAN",         			@leather_technology_fourth_year.gradetwelve
	r.add_field "CUMULATIVE_MEAN",      	@leather_technology_fourth_year.average_first_second_third_fourth
	r.add_field "CURRENT_MEAN",      	 	@leather_technology_fourth_year.average_fourth_year
	r.add_field "RECOMMENDATION",        	@leather_technology_fourth_year.recommendation
	
	 end
  end
  
     
  def show 	
    	    
  @leather_technology_fourth_year = LeatherTechnologyFourthYear.find(params[:id]) 
         
  send_data print.generate,
  		    type: 'application/vnd.oasis.opendocument.text',
             disposition: 'inline',
             filename:  "#{@leather_technology_fourth_year.student.name}" +"_" "#{@leather_technology_fourth_year.student.admission_no}.odt"
	         
         end
     end
