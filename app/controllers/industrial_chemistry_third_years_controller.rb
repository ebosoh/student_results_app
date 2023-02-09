
require "odf-report"
require 'nokogiri'
require 'zip'



class IndustrialChemistryThirdYearsController < ApplicationController
def print            
    @industrial_chemistry_third_year = IndustrialChemistryThirdYear.find(params[:id])   
        	
	report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'industrial_chemistry_third_year.odt')) do |r|

	r.add_field "NAME",         			@industrial_chemistry_third_year.student.name
	r.add_field "ADMISSION_NO",			@industrial_chemistry_third_year.admission_no
	r.add_field "ACADEMIC_YEAR",         	@industrial_chemistry_third_year.academic_year	
	r.add_field "DATE",				@industrial_chemistry_third_year.current_date 
	
	r.add_field "SCH_3101",         		@industrial_chemistry_third_year.gradeone
	r.add_field "SCH_3102",         		@industrial_chemistry_third_year.gradetwo
	r.add_field "SCH_3103",         		@industrial_chemistry_third_year.gradethree
	r.add_field "SCH_3104",         		@industrial_chemistry_third_year.gradefour
	r.add_field "SCH_3106",         		@industrial_chemistry_third_year.gradefive
	r.add_field "SCH_3107",         		@industrial_chemistry_third_year.gradesix
	r.add_field "IGS_3101",         		@industrial_chemistry_third_year.gradeseven
	r.add_field "SCH_3201",         		@industrial_chemistry_third_year.gradeeight
	r.add_field "SCH_3202",         		@industrial_chemistry_third_year.gradenine
	r.add_field "SCH_3203",         		@industrial_chemistry_third_year.gradeten
	r.add_field "SCH_3204",         		@industrial_chemistry_third_year.gradeeleven
	r.add_field "SCH_3205",			@industrial_chemistry_third_year.gradetwelve
	r.add_field "SCH_3206",			@industrial_chemistry_third_year.gradethirteen
	r.add_field "IGS_3102",			@industrial_chemistry_third_year.gradefourteen	
	r.add_field "MEAN",         			@industrial_chemistry_third_year.gradefifteen
	#r.add_field "CUMULATIVE_MEAN",      	@industrial_chemistry_third_year.average_first_second_third
	r.add_field "CURRENT_MEAN",      	 	@industrial_chemistry_third_year.mean
	r.add_field "RECOMMENDATION",        	@industrial_chemistry_third_year.recommendation
	
	 end
  end
  
     
  def show 	
    	    
  @industrial_chemistry_third_year = IndustrialChemistryThirdYear.find(params[:id]) 
         
  send_data print.generate,
  		    type: 'application/vnd.oasis.opendocument.odf',
             disposition: 'attachment',
	     filename:  "#{@industrial_chemistry_third_year.student.name}" +"_" "#{@industrial_chemistry_third_year.student.admission_no}.odf"
	         
         end
     end