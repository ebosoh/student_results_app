require "odf-report"
require 'nokogiri'
require 'zip'




class LeatherStageOnesController < ApplicationController
    def print            
        @leather_stage_one = LeatherStageOne.find(params[:id])   
                
        report = ODFReport::Report.new(Rails.root.join('app', 'reports', 'leather_stage_one.odt')) do |r|
    
        r.add_field "NAME",         	@leather_stage_one.student.name
        r.add_field "ADMISSION_NO",		@leather_stage_one.admission_no
        r.add_field "ACADEMIC_YEAR",    @leather_stage_one.academic_year	
        r.add_field "DATE",				@leather_stage_one.current_date 
        
        r.add_field "SLT_0101",         		@leather_stage_one.gradeone
        r.add_field "IGS_0201",         		@leather_stage_one.gradetwo
        r.add_field "SLT_0102",         		@leather_stage_one.gradethree
        r.add_field "TDT_0104",         		@leather_stage_one.gradefour
        r.add_field "SLT_0103",         		@leather_stage_one.gradefive
        r.add_field "TDT_0103",         		@leather_stage_one.gradesix
        r.add_field "SLT_0104",         		@leather_stage_one.gradeseven
        r.add_field "SLT_0105",         		@leather_stage_one.gradeeight
        r.add_field "SLT_0106",         		@leather_stage_one.gradenine
        r.add_field "SLT_0107",         		@leather_stage_one.gradeten
        r.add_field "SLT_0108",         		@leather_stage_one.gradeeleven
        r.add_field "HNS_1100",			        @leather_stage_one.gradetwelve
        r.add_field "CURRENT_MEAN",         	@leather_stage_one.average_stage_one
        r.add_field "MEAN_GRADE",      	 	    @leather_stage_one.gradethirteen
        r.add_field "RECOMMENDATION",        	@leather_stage_one.recommendation
        
         end
      end
      
         
      def show 	
                
      @leather_stage_one = LeatherStageOne.find(params[:id]) 
             
      send_data print.generate,
                  type: 'application/vnd.oasis.opendocument.odf',
                 disposition: 'attachment',
             filename:  "#{@leather_stage_one.student.name}" +"_" "#{@leather_stage_one.student.admission_no}.odf"
                 
             end
         end