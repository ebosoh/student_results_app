require "odf-report"
require 'nokogiri'
require 'zip'


class LeatherTechnologySecondYearsController < ApplicationController
def print            
    @leather_technology_second_year = LeatherTechnologySecondYear.find(params[:id])   
        	
	report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'leather_technology_second_year.odt')) do |r|

	r.add_field "NAME",         			@leather_technology_second_year.student.name
	r.add_field "ADMISSION_NO",			@leather_technology_second_year.admission_no
	r.add_field "ACADEMIC_YEAR",         	@leather_technology_second_year.academic_year
	r.add_field "DATE",				@leather_technology_second_year.current_date
	r.add_field "SCH_2102",   	      		@leather_technology_second_year.gradeone
	r.add_field "SLT_2101",         		@leather_technology_second_year.gradetwo
	r.add_field "SLT_2102",         		@leather_technology_second_year.gradethree
	r.add_field "SLT_2103",         		@leather_technology_second_year.gradefour
	r.add_field "SLT_2104",         		@leather_technology_second_year.gradefive
	r.add_field "SLT_2105",         		@leather_technology_second_year.gradesix
	r.add_field "SLT_2201",         		@leather_technology_second_year.gradeseven
	r.add_field "SCH_2202",         		@leather_technology_second_year.gradeeight
	r.add_field "SLT_2202",         		@leather_technology_second_year.gradenine
	r.add_field "SLT_2203",         		@leather_technology_second_year.gradeten
	r.add_field "SCH_2203",			@leather_technology_second_year.gradeeleven
		
	r.add_field "MEAN",         			@leather_technology_second_year.gradetwelve
	#r.add_field "CUMULATIVE_MEAN",      	@leather_technology_second_year.average_first_second
	r.add_field "CURRENT_MEAN",      	 	@leather_technology_second_year.average_second_year
	r.add_field "RECOMMENDATION",        	@leather_technology_second_year.recommendation
	
	 end
  end
  
     
  def show 	
    	    
  @leather_technology_second_year = LeatherTechnologySecondYear.find(params[:id]) 
         
  send_data print.generate,
  		    type: 'application/vnd.oasis.opendocument.text',
             disposition: 'inline',
             filename:  "#{@leather_technology_second_year.student.name}" +"_" "#{@leather_technology_second_year.student.admission_no}.odt"
	         
         end
     end