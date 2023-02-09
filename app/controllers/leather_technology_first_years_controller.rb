require "odf-report"
require 'nokogiri'
require 'zip'


class LeatherTechnologyFirstYearsController < ApplicationController
def print            
    @leather_technology_first_year = LeatherTechnologyFirstYear.find(params[:id])   
        	
	report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'leather_technology_first_year.odt')) do |r|

	r.add_field "NAME",         			@leather_technology_first_year.student.name
	r.add_field "ADMISSION_NO",			@leather_technology_first_year.admission_no
	r.add_field "ACADEMIC_YEAR",         	@leather_technology_first_year.academic_year
	r.add_field "DATE",				@leather_technology_first_year.current_date
	r.add_field "IGS_1104",         		@leather_technology_first_year.gradeone
	r.add_field "SCH_1101",         		@leather_technology_first_year.gradetwo
	r.add_field "SCH_1102",         		@leather_technology_first_year.gradethree
	r.add_field "SLT_1101",         		@leather_technology_first_year.gradefour
	r.add_field "SLT_1102",         		@leather_technology_first_year.gradefive
	r.add_field "SMA_2104",         		@leather_technology_first_year.gradesix
	r.add_field "CCS_1101",         		@leather_technology_first_year.gradeseven
	r.add_field "HNS_1100",         		@leather_technology_first_year.gradeeight
	r.add_field "SCH_1201",         		@leather_technology_first_year.gradenine
	r.add_field "SLT_1201",         		@leather_technology_first_year.gradeten
	r.add_field "SLT_1202",         		@leather_technology_first_year.gradeeleven
	r.add_field "SLT_1203",			@leather_technology_first_year.gradetwelve
	r.add_field "SCH_1202",			@leather_technology_first_year.gradethirteen
	r.add_field "IGS_1201",			@leather_technology_first_year.gradesixteen
	
	
	r.add_field "MEAN",         			@leather_technology_first_year.gradefourteen
	#r.add_field "CUMULATIVE_MEAN",      @leather_technology_first_year.average_first_first
	r.add_field "CURRENT_MEAN",      	 	@leather_technology_first_year.average_first_year
	r.add_field "RECOMMENDATION",        	@leather_technology_first_year.recommendation
	
	 end
  end
  
     
  def show 	
    
	    
  @leather_technology_first_year = LeatherTechnologyFirstYear.find(params[:id]) 
         
  send_data print.generate,
  		    type: 'application/vnd.oasis.opendocument.text',
             disposition: 'inline',
             filename:  "#{@leather_technology_first_year.student.name}" +"_" "#{@leather_technology_first_year.student.admission_no}.odt"
	         
         end
     end