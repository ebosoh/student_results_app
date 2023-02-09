require "odf-report"
require 'nokogiri'
require 'zip'



class LeatherTechnologyThirdYearsController < ApplicationController
def print            
    @leather_technology_third_year = LeatherTechnologyThirdYear.find(params[:id])   
        	
	report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'leather_technology_third_year.odt')) do |r|

	r.add_field "NAME",         			@leather_technology_third_year.student.name
	r.add_field "ADMISSION_NO",			@leather_technology_third_year.admission_no
	r.add_field "ACADEMIC_YEAR",         	@leather_technology_third_year.academic_year	
	r.add_field "DATE",				@leather_technology_third_year.current_date
	r.add_field "SLT_3101",   	      		@leather_technology_third_year.gradeone
	r.add_field "SLT_3102",         		@leather_technology_third_year.gradetwo
	r.add_field "SLT_3103",         		@leather_technology_third_year.gradethree
	r.add_field "SLT_3104",         		@leather_technology_third_year.gradefour
	r.add_field "SLT_3105",         		@leather_technology_third_year.gradefive
	r.add_field "SCH_3106",         		@leather_technology_third_year.gradesix
	r.add_field "IGS_3101",         		@leather_technology_third_year.gradeseven
	r.add_field "SLT_3201",         		@leather_technology_third_year.gradeeight
	r.add_field "SLT_3202",         		@leather_technology_third_year.gradenine
	r.add_field "SLT_3203",         		@leather_technology_third_year.gradeten
	r.add_field "SLT_3204",			@leather_technology_third_year.gradeeleven
	r.add_field "SLT_3205",			@leather_technology_third_year.gradetwelve
	r.add_field "IGS_3202",			@leather_technology_third_year.gradethirteen
		
	r.add_field "MEAN",         			@leather_technology_third_year.gradetwelve
	#r.add_field "CUMULATIVE_MEAN",      	@leather_technology_third_year.average_first_second_third
	r.add_field "CURRENT_MEAN",      	 	@leather_technology_third_year.average_third_year
	r.add_field "RECOMMENDATION",        	@leather_technology_third_year.recommendation
	
	 end
  end
  
     
  def show 	
    	    
  @leather_technology_third_year = LeatherTechnologyThirdYear.find(params[:id]) 
         
  send_data print.generate,
  		    type: 'application/vnd.oasis.opendocument.text',
             disposition: 'inline',
             filename:  "#{@leather_technology_third_year.student.name}" +"_" "#{@leather_technology_third_year.student.admission_no}.odt"
	         
         end
     end
