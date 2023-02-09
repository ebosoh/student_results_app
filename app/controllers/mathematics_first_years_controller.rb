require "odf-report"
require 'nokogiri'
require 'zip'




class MathematicsFirstYearsController < ApplicationController
def print            
    @mathematics_first_year = MathematicsFirstYear.find(params[:id])   
        	
	report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'mathematics_first_year.odt')) do |r|

	r.add_field "NAME",         			@mathematics_first_year.student.name
	r.add_field "ADMISSION_NO",			@mathematics_first_year.admission_no
	r.add_field "ACADEMIC_YEAR",         	@mathematics_first_year.academic_year
	r.add_field "DATE",				@mathematics_first_year.current_date
	r.add_field "IGS_1104",         		@mathematics_first_year.gradeone
	r.add_field "HNS_1100",         		@mathematics_first_year.gradetwo
	r.add_field "CCS_1101",         		@mathematics_first_year.gradethree
	r.add_field "SMA_1108",         		@mathematics_first_year.gradefour
	r.add_field "SMA_1109",         		@mathematics_first_year.gradefive
	r.add_field "SMA_1105",         		@mathematics_first_year.gradesix
	r.add_field "IGS_1201",         		@mathematics_first_year.gradeseven
	r.add_field "CCS_1203",         		@mathematics_first_year.gradeeight
	r.add_field "SMA_1117",         		@mathematics_first_year.gradenine
	r.add_field "SMA_1248",         		@mathematics_first_year.gradeten
	r.add_field "SMA_1211",         		@mathematics_first_year.gradeeleven
	r.add_field "SAS_1201",			@mathematics_first_year.gradetwelve
	
	r.add_field "MEAN",         			@mathematics_first_year.gradethirteen
	#r.add_field "CUMULATIVE_MEAN",     @mathematics_first_year.average_first_first
	r.add_field "CURRENT_MEAN",      	 	@mathematics_first_year.average_first_year
	r.add_field "RECOMMENDATION",        	@mathematics_first_year.recommendation
	
	 end
  end
  
     
  def show 	
    	    
  @mathematics_first_year = MathematicsFirstYear.find(params[:id]) 
         
  send_data print.generate,
  		    type: 'application/vnd.oasis.opendocument.text',
             disposition: 'inline',
             filename:  "#{@mathematics_first_year.student.name}" +"_" "#{@mathematics_first_year.student.admission_no}.odt"
	         
         end
     end