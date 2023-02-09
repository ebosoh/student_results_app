
require "odf-report"
require 'nokogiri'
require 'zip'



class IndustrialChemistryFourthYearsController < ApplicationController
def print            
    @industrial_chemistry_fourth_year = IndustrialChemistryFourthYear.find(params[:id])   
        	
	report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'industrial_chemistry_fourth_year.odt')) do |r|

	r.add_field "NAME",         			@industrial_chemistry_fourth_year.student.name
	r.add_field "ADMISSION_NO",				@industrial_chemistry_fourth_year.admission_no
	r.add_field "ACADEMIC_YEAR",         	@industrial_chemistry_fourth_year.academic_year	
	r.add_field "DATE",						@industrial_chemistry_fourth_year.current_date
	r.add_field "BBA_2201",         		@industrial_chemistry_fourth_year.gradeone
	r.add_field "SCH_4101",         		@industrial_chemistry_fourth_year.gradetwo
	r.add_field "SCH_4199",         		@industrial_chemistry_fourth_year.gradethree
	r.add_field "IGS_4101",         		@industrial_chemistry_fourth_year.gradefour
	r.add_field "SCH_4102",         		@industrial_chemistry_fourth_year.gradefive
	r.add_field "SCH_4103",         		@industrial_chemistry_fourth_year.gradesix
	r.add_field "SCH_4104",         		@industrial_chemistry_fourth_year.gradeseven
	r.add_field "SCH_4105",         		@industrial_chemistry_fourth_year.gradeeight
	r.add_field "SCH_4106",         		@industrial_chemistry_fourth_year.gradenine
	r.add_field "SCH_4201",         		@industrial_chemistry_fourth_year.gradeten
	r.add_field "SCH_4202",         		@industrial_chemistry_fourth_year.gradeeleven
	r.add_field "IGS_4102",			@industrial_chemistry_fourth_year.gradetwelve
	r.add_field "SCH_4203",			@industrial_chemistry_fourth_year.gradethirteen
	r.add_field "SCH_4204",			@industrial_chemistry_fourth_year.gradefourteen	
	r.add_field "SCH_4205",			@industrial_chemistry_fourth_year.gradefifteen
	r.add_field "SCH_4206",			@industrial_chemistry_fourth_year.gradesixteen
	r.add_field "SCH_4199",			@industrial_chemistry_fourth_year.gradeseventeen
	r.add_field "SCH_3399",			@industrial_chemistry_fourth_year.sch_3399
	r.add_field "SCH_3202",			@industrial_chemistry_fourth_year.gradenineteen
	
	r.add_field "MEAN_4",         			@industrial_chemistry_fourth_year.gradeeighteen
	#r.add_field "CUMULATIVE_MEAN",      	@industrial_chemistry_fourth_year.average_first_second_third_fourth
	r.add_field "CURRENT_MEAN",      	 	@industrial_chemistry_fourth_year.average_fourth_year
	r.add_field "RECOMMENDATION",        	@industrial_chemistry_fourth_year.recommendation
	
	 end
  end
  
     
  def show 	
    	    
  @industrial_chemistry_fourth_year = IndustrialChemistryFourthYear.find(params[:id]) 
         
  send_data print.generate,
  		    type: 'application/vnd.oasis.opendocument.text',
             disposition: 'inline',
             filename:  "#{@industrial_chemistry_fourth_year.student.name}" +"_" "#{@industrial_chemistry_fourth_year.student.admission_no}.odt"
	         
         end
     end
