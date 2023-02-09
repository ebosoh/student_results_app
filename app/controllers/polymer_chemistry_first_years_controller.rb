require "odf-report"
require 'nokogiri'
require 'zip'


class PolymerChemistryFirstYearsController < ApplicationController
def print            
    @polymer_chemistry_first_year = PolymerChemistryFirstYear.find(params[:id])   
        	
	report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'polymer_chemistry_first_year.odt')) do |r|

	r.add_field "NAME",         			@polymer_chemistry_first_year.student.name
	r.add_field "ADMISSION_NO",			@polymer_chemistry_first_year.admission_no
	r.add_field "ACADEMIC_YEAR",         	@polymer_chemistry_first_year.academic_year
	r.add_field "DATE",				@polymer_chemistry_first_year.current_date
	r.add_field "SCH_1101",         		@polymer_chemistry_first_year.gradeone
	r.add_field "SCH_1102",         		@polymer_chemistry_first_year.gradetwo
	#r.add_field "SCH_1103",         		@polymer_chemistry_first_year.gradethree
	r.add_field "SMA_1108",         		@polymer_chemistry_first_year.gradefour
	r.add_field "SMA_1117",         		@polymer_chemistry_first_year.gradefive
	r.add_field "IGS_1104",         		@polymer_chemistry_first_year.gradesix
	r.add_field "HNS_1100",         		@polymer_chemistry_first_year.gradeseven
	r.add_field "SCH_1201",         		@polymer_chemistry_first_year.gradeeight
	r.add_field "SCH_1202",         		@polymer_chemistry_first_year.gradenine
	r.add_field "SCP_1201",         		@polymer_chemistry_first_year.gradeten
	r.add_field "CCS_1200",         		@polymer_chemistry_first_year.gradeeleven
	r.add_field "SMA_1218",			@polymer_chemistry_first_year.gradetwelve
	r.add_field "SAS_1201",			@polymer_chemistry_first_year.gradethirteen
	r.add_field "IGS_1201",			@polymer_chemistry_first_year.gradefourteen
	r.add_field "MEAN",         			@polymer_chemistry_first_year.gradefifteen
	#r.add_field "CUMULATIVE_MEAN",      	@polymer_chemistry_first_year.average_first_first
	r.add_field "CURRENT_MEAN",      	 	@polymer_chemistry_first_year.average_first_year
	r.add_field "RECOMMENDATION",        	@polymer_chemistry_first_year.recommendation
	
	 end
  end
  
     
  def show 	
    	    
  @polymer_chemistry_first_year = PolymerChemistryFirstYear.find(params[:id]) 
         
  send_data print.generate,
  		    type: 'application/vnd.oasis.opendocument.text',
             disposition: 'inline',
             filename:  "#{@polymer_chemistry_first_year.student.name}" +"_" "#{@polymer_chemistry_first_year.student.admission_no}.odt"
	         
         end
     end