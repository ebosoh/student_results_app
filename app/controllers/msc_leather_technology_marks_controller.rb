require "odf-report"
require 'nokogiri'
require 'zip'

class MscLeatherTechnologyMarksController < ApplicationController
	
def print            
    @msc_leather_technology_mark = MscLeatherTechnologyMark.find(params[:id])   
    
    
	
	report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'msc_leather_technology_marks.odt')) do |r|


	r.add_field "NAME",         				@msc_leather_technology_mark.student.name
	r.add_field "ADMISSION_NO",				@msc_leather_technology_mark.admission_no
	r.add_field "ACADEMIC_YEAR",         		@msc_leather_technology_mark.academic_year
	
	r.add_field "DATE",					@msc_leather_technology_mark.current_date
	
	r.add_field "SLT_6100",         			@msc_leather_technology_mark.gradeone
	r.add_field "SLT_6101",         			@msc_leather_technology_mark.gradetwo
	r.add_field "SLT_6102",         			@msc_leather_technology_mark.gradethree
	r.add_field "SLT_6103",         			@msc_leather_technology_mark.gradefour
	r.add_field "SLT_6104",         			@msc_leather_technology_mark.gradefive
	r.add_field "SLT_6105",         			@msc_leather_technology_mark.gradesix
	r.add_field "SLT_6106",         			@msc_leather_technology_mark.gradeseven
	r.add_field "SLT_6107",         			@msc_leather_technology_mark.gradeeight
	r.add_field "SLT_6108",         			@msc_leather_technology_mark.gradenine
	r.add_field "SLT_6109",         			@msc_leather_technology_mark.gradeten
	r.add_field "SLT_6110",         			@msc_leather_technology_mark.gradeeleven
	r.add_field "SLT_6111",         			@msc_leather_technology_mark.gradetwelve
	r.add_field "SLT_6112",      				@msc_leather_technology_mark.gradethirteen
	r.add_field "SLT_6113",      				@msc_leather_technology_mark.gradefourteen
	r.add_field "SLT_6115",      				@msc_leather_technology_mark.gradefifteen
	r.add_field "SLT_6116",      				@msc_leather_technology_mark.gradesixteen
	r.add_field "SLT_6117",      				@msc_leather_technology_mark.gradeseventeen
	r.add_field "SLT_6118",      				@msc_leather_technology_mark.gradeeighteen
	r.add_field "SLT_6200",      				@msc_leather_technology_mark.slt_6200
	r.add_field "MEAN",      				@msc_leather_technology_mark.gradetwenty
	r.add_field "RECOMMENDATION",        		@msc_leather_technology_mark.recommendation
	 
	 end
  
end
  
    
  
  def show 	

    
	    
  @msc_leather_technology_mark  = MscLeatherTechnologyMark.find(params[:id]) 
         
  send_data print.generate,
  		    type: 'application/vnd.oasis.opendocument.text',
             disposition: 'inline',
             filename:  "#{@msc_leather_technology_mark.student.name}" +"_" "#{@msc_leather_technology_mark.student.admission_no}.odt"
	         
         end
     end