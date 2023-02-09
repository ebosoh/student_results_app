require "odf-report"
require 'nokogiri'
require 'zip'


class IndustrialChemistrySecondYearsController < ApplicationController
def print            
    @industrial_chemistry_second_year = IndustrialChemistrySecondYear.find(params[:id])   
        	
	report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'industrial_chemistry_second_year.odt')) do |r|

	r.add_field "NAME",         			@industrial_chemistry_second_year.student.name
	r.add_field "ADMISSION_NO",			@industrial_chemistry_second_year.admission_no
	r.add_field "ACADEMIC_YEAR",         	@industrial_chemistry_second_year.academic_year	
	r.add_field "DATE",				@industrial_chemistry_second_year.current_date
	r.add_field "SCH_2101",         		@industrial_chemistry_second_year.gradeone
	r.add_field "SCH_2102",         		@industrial_chemistry_second_year.gradetwo
	r.add_field "SCH_2103",         		@industrial_chemistry_second_year.gradethree
	r.add_field "SCH_2104",         		@industrial_chemistry_second_year.gradefour
	r.add_field "SCH_2105",         		@industrial_chemistry_second_year.gradefive
	r.add_field "SAS_2101",         		@industrial_chemistry_second_year.gradesix
	r.add_field "IGS_2101",         		@industrial_chemistry_second_year.gradeseven
	r.add_field "SCH_2201",         		@industrial_chemistry_second_year.gradeeight
	r.add_field "SCH_2202",         		@industrial_chemistry_second_year.gradenine
	r.add_field "SCH_2203",         		@industrial_chemistry_second_year.gradeten
	r.add_field "SCH_2204",         		@industrial_chemistry_second_year.gradeeleven
	r.add_field "SCH_2205",         		@industrial_chemistry_second_year.gradetwelve
	r.add_field "SCH_2206",         		@industrial_chemistry_second_year.gradethirteen
	r.add_field "IGS_2102",         		@industrial_chemistry_second_year.gradefourteen
	
	
	
	r.add_field "MEAN",         			@industrial_chemistry_second_year.gradefifteen
	#r.add_field "CUMULATIVE_MEAN",      	@industrial_chemistry_second_year.average_first_second
	r.add_field "CURRENT_MEAN",      	 	@industrial_chemistry_second_year.average_second_year
	r.add_field "RECOMMENDATION",        	@industrial_chemistry_second_year.recommendation
	
	 end
  end
  
     
  def show 	
    	    
  @industrial_chemistry_second_year = IndustrialChemistrySecondYear.find(params[:id]) 
         
  send_data print.generate,
  		    type: 'application/vnd.oasis.opendocument.text',
             disposition: 'inline',
             filename:  "#{@industrial_chemistry_second_year.student.name}" +"_" "#{@industrial_chemistry_second_year.student.admission_no}.odt"
	         
         end
     end