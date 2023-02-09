require "odf-report"
require 'nokogiri'
require 'zip'





class MathematicsSecondYearsController < ApplicationController
def print            
    @mathematics_second_year = MathematicsSecondYear.find(params[:id])   
        	
	report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'mathematics_second_year.odt')) do |r|

	r.add_field "NAME",         			@mathematics_second_year .student.name
	r.add_field "ADMISSION_NO",			@mathematics_second_year .admission_no
	r.add_field "ACADEMIC_YEAR",         	@mathematics_second_year .academic_year
	r.add_field "DATE",				@mathematics_second_year .current_date
	r.add_field "SAS_2101",         		@mathematics_second_year .gradeone
	r.add_field "CCS_2102",         		@mathematics_second_year .gradetwo
	r.add_field "IGS_2101",         		@mathematics_second_year .gradethree
	r.add_field "SMA_1218",         		@mathematics_second_year .gradefour
	r.add_field "SMA_2112",         		@mathematics_second_year .gradefive
	r.add_field "SMA_2149",         		@mathematics_second_year .gradesix
	r.add_field "SMA_2119",         		@mathematics_second_year .gradeseven
	r.add_field "SMA_2115",         		@mathematics_second_year .gradeeight
	r.add_field "SMA_2224",         		@mathematics_second_year .gradenine
	r.add_field "SMA_2232",         		@mathematics_second_year .gradeten
	r.add_field "IGS_2202",         		@mathematics_second_year .gradeeleven
	r.add_field "SMA_2164",			@mathematics_second_year .gradetwelve
	
	r.add_field "MEAN",         			@mathematics_second_year .gradethirteen
	r.add_field "CUMULATIVE_MEAN",     @mathematics_second_year.cumulative_mean# Trial for cumm mean
	r.add_field "CURRENT_MEAN",      	 	@mathematics_second_year .average_second_year
	r.add_field "RECOMMENDATION",        	@mathematics_second_year .recommendation
	
	 end
  end
  
     
  def show 	
    	    
  @mathematics_second_year = MathematicsSecondYear.find(params[:id]) 
         
  send_data print.generate,
  		    type: 'application/vnd.oasis.opendocument.text',
             disposition: 'inline',
             filename:  "#{@mathematics_second_year .student.name}" +"_" "#{@mathematics_second_year .student.admission_no}.odt"
	         
         end
     end