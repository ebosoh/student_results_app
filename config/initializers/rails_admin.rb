#require Rails.root.join('lib', 'rails_admin', 'custom_actions.rb') ==================can be used for custom action



RailsAdmin.config do |config|
	 config.total_columns_width = 2800  #==== customize number of columns a page >>2550
	 
	 config.main_app_name = ["SCHOOL OF SCIENCE", ""]
	 
	 
	 #RailsAdmin::Config::Actions.register(Dekutsis::Admin::Actions::PrintRecord)==================can be used for custom action
	 
	 
	 

	#config.navigation_static_links = {
  #'SMS Portal' => 'https://sms.movesms.co.ke/userlogin',

  #}

#config.model 'Student' do # Sorting of Models
    #list do
         #sort_reverse false
	 #end 
 #end
 
 #config.model 'Supervisor' do # Sorting of Models
    #list do
         #sort_reverse false
	 #end 
 #end
 
# config.model 'SupervisorAllocation' do # Sorting of Models
    #list do
        # sort_reverse false
	# end 
	# end
 
 
 
 
 
 
 	
config.model 'Phd' do
    list do
         sort_reverse false
	 end 
	 end		

config.model 'Mba' do
    list do
         sort_reverse false
	 end 
 end
 
 config.model 'BusinessAnalytic' do
    list do
         sort_reverse false
	 end 
	 end
 
 config.model 'Economic' do
    list do
         sort_reverse false
	 end 
	 end
 
 config.model 'SupplyChainManagement' do
    list do
         sort_reverse false
	 end 
 end
 
 config.model 'ProjectManagement' do
    list do
         sort_reverse false
	 end 
	 end
 
 
 #config.model 'Student' do #===partial for Student field clours C:\RailsInstaller\Ruby2.2.0\lib\ruby\gems\2.2.0\gems\rails_admin-1.1.1\app\views\rails_admin\main
  #edit do
  # field :lag do
   # render partial "lag_colours"
#end
#end
#end

 
 
 
 
 
 
		
	config.model 'Student' do
		list do
			items_per_page  10
		end
		end

		config.model 'StandardEight' do
			list do
				items_per_page  10
			end
			end
			config.model 'StandardSeven' do
				list do
					items_per_page  10
				end
				end
		config.model 'StandardSix' do
					list do
						items_per_page  10
					end
					end
	config.model 'StandardFive' do
						list do
							items_per_page  10
						end
						end
	config.model 'StandardFour' do
							list do
								items_per_page  10
							end
							end
	config.model 'GradeThree' do
								list do
									items_per_page  10
								end
								end
 config.model 'GradeTwo' do
					list do
					items_per_page  10
				end
				end
	config.model 'GradeOne' do
					list do
						items_per_page  10
					end
					end

	config.model 'BabyClass' do
						list do
							items_per_page  10
						end
						end
	config.model 'PreprimaryTwo' do
			list do
					items_per_page  10
			end
		end
	config.model 'PreprimaryOne' do
				list do
						items_per_page  10
				end
			end

config.model 'Archive' do
		list do
			items_per_page  10
	end
end

 config.model 'FeePayment' do
		list do
			items_per_page  10
		end
		end
	 config.model 'ExamResult' do
		 list do
			 field :year do
				 strftime_format "%Y"          #  Change the date format
				 end
			 field :term
			 field :student
			 field	:level do
				 formatted_value{ bindings[:student.type] }
				 end
			 field :grammar
			 field :composition
			 field :english
			 field :lugha
			 field :insha
			 field :kiswahili
			 field :maths
			 field :science
			 field :social_studies do # renamed field
				 label "SST"
			 end
			 field :christian_religious_education do # field renamed
			 label "C.R.E"
		 end
		 field :SSRE do #rename field
			 label "S.S.R.E"
		 end
		 field :total
		 field :position
		 end
	 end
	 
	 config.model 'RenameFieldsInLtF' do
		visible false
	end
	 
	 
	 
	 
	 
			#==================================================================== Model visibility
  	config.model 'StandardEight' do
		visible true
	end
	config.model 'StandardSeven' do
		visible true
		end
	config.model 'StandardSix' do
		visible true
	end
	config.model 'StandardFive' do
		visible true
	end
	config.model 'StandardFour' do
		visible true
	end
	config.model 'StandardThree' do
		visible false
	end
	config.model 'StandardTwo' do
		visible false
	end
	config.model 'StandardOne' do
		visible false
	end
	config.model 'PlayGroup' do
		visible false
	end
config.model 'DayCare' do
	visible false
end


config.model 'Archive' do
	visible true
end

config.model 'GradeThree' do
	visible true
end

config.model 'GradeTwo' do
	visible true
end
config.model 'GradeOne' do
	visible true
end
config.model 'PrePrimaryTwo' do
	visible true
end

config.model 'PrePrimaryOne' do
	visible true
end

config.model 'BabyClass' do
	visible true
end

config.model 'FeePayment' do
	visible true
end

config.model 'FinanceReport' do
	visible true
end

config.model 'TransportPayment' do
	visible true
end

#config.model 'Student' do
	#visible true
#end

#config.model 'Cohort' do
	#list do
		#field :name
		#field :student
		#end 
	#end
	
	
	
#	config.model 'StudentProgression' do
#list do
	
	#field :student
	#field :academic_year
	#field :year_of_study
	#field :semester
	#field :status
	#field :cause
	#field :appeal_date do
	#	label 'date_applied'
	#	end
	#field :decision_date do
	#	label 'meeting_date'
	#	end
	#field :board_decision
	#field :resumption_date
	#field :details
	#exclude_fields :created_at, :updated_at
	
#end
#end
	
	
	
	
config.model 'Programme' do
list do
	
	field :name
	field :level
	field :students
end
end

config.model 'Cohort' do
list do
	
	field :name
	field :students
end
end
	

	config.model 'Cohort' do
		visible false
	end
	
	config.model 'StudentProgression' do
		visible false
	end
	
	config.model 'User' do
		visible false
	end
		

config.model 'Student' do
list do
	#field :created_at do
			#label "Admission date"
			#strftime_format "%d-%m-%Y"          #  Change the date format
		#end
	field :admission_no
	field :name, :color ##########################################################################################################################
	field :gender
	field :programme
	field :batch do
		 strftime_format "%Y"
		 end
	field :faculty 
	field :department
	field :level
	field :cohort do
		label "Semester"
		end
	
end
weight -1
end

config.model 'Phd' do
list do
	#field :created_at do
			#label "Admission date"
			#strftime_format "%d-%m-%Y"          #  Change the date format
		#end
	field :reg_no
	field :name
	field :gender
	field :intake do
		 strftime_format "%Y"
		 end
	#field :type do
		#label "Class"
	#end
	field :graduation do
		 strftime_format "%Y"
		 end
	field :lag
	#field :parent
	#field :contact
	#field :previous_school
	#field :stream
	field :type do
		label "Programme"
	end

end
end

config.model 'BusinessAnalytic' do
list do
	#field :created_at do
			#label "Admission date"
			#strftime_format "%d-%m-%Y"          #  Change the date format
		#end
	field :reg_no
	field :name
	field :gender
	field :intake do
		 strftime_format "%Y"
		 end
	#field :type do
		#label "Class"
	#end
	field :graduation do
		 strftime_format "%Y"
		 end
	field :lag
	#field :parent
	#field :contact
	#field :previous_school
	#field :stream
	field :type do
		label "Programme"
	end

end
end

config.model 'Economic' do
list do
	#field :created_at do
			#label "Admission date"
			#strftime_format "%d-%m-%Y"          #  Change the date format
		#end
	field :reg_no
	field :name
	field :gender
	field :intake do
		 strftime_format "%Y"
		 end
	#field :type do
		#label "Class"
	#end
	field :graduation do
		 strftime_format "%Y"
		 end
	field :lag
	#field :parent
	#field :contact
	#field :previous_school
	#field :stream
	field :type do
		label "Programme"
	end
end
end 

config.model 'Mba' do
list do
	#field :created_at do
			#label "Admission date"
			#strftime_format "%d-%m-%Y"          #  Change the date format
		#end
	field :reg_no
	field :name
	field :gender
	field :intake do
		 strftime_format "%Y"
		 end
	
	field :graduation do
		 strftime_format "%Y"
		 end
	field :lag
	#field :parent
	#field :contact
	#field :previous_school
	#field :stream
	field :type do
		label "Programme"
	end

end
end

config.model 'SupplyChainManagement' do
list do
	#field :created_at do
			#label "Admission date"
			#strftime_format "%d-%m-%Y"          #  Change the date format
		#end
	field :reg_no
	field :name
	field :gender
	field :intake do
		 strftime_format "%Y"
		 end
	#field :type do
		#label "Class"
	#end
	field :graduation do
		 strftime_format "%Y"
		 end
	field :lag
	#field :parent
	#field :contact
	#field :previous_school
	#field :stream
	field :type do
		label "Programme"
	end

end
end

config.model 'ProjectManagement' do
list do
	#field :created_at do
			#label "Admission date"
			#strftime_format "%d-%m-%Y"          #  Change the date format
		#end
	field :reg_no
	field :name
	field :gender
	field :intake do
		 strftime_format "%Y"
		 end
	#field :type do
		#label "Class"
	#end
	field :graduation do
		 strftime_format "%Y"
		 end
	field :lag
	#field :parent
	#field :contact
	#field :previous_school
	#field :stream
	field :type do
		label "Programme"
	end

end
end

#config.model 'Supervisor' do # ==================================================== Supervisor fields
#list do
	#field :name
	#field :g
	#field :title
	#field :specialization
	#field :education
	#field :experience
	#field :school
	#field :department
	#field :phone
	#ield :email
#end
#end


#config.model 'SupervisorAllocation' do # ==================================================== SupervisorAllocation fields
#list do
	#field :student
	#field :supervisor
	#field :supervisor_level
	#field :created_at
	#field :updated_at
	
#end
#end


config.model 'FormOne' do
list do
	#field :adm_no
	field :name
	field :type do
		label "Form"
		end
	field :term
	field :stream
	field :contact
end
end

config.model 'FormTwo' do
list do
	#field :adm_no
	field :name
	field :type do
		label "Form"
		end
	field :term
	field :stream
	field :contact
end
end

config.model 'FormThree' do
list do
	#field :adm_no
	field :name
	field :type do
		label "Form"
		end
	field :term
	field :stream
	field :contact
end
end

config.model 'FormFour' do
list do
	#field :adm_no
	field :name
	field :type do
		label "Form"
		end
	field :term
	field :stream
	field :contact
end
end

config.model 'Archive' do
list do
	#field :adm_no
	field :created_at do
			label "Admission date"
			strftime_format "%d-%m-%Y"          #  Change the date format
			end
	field :name
	field :upi_number
	field :gender
	field :birthday
	#field :parent
	field :contact
	#field :previous_school
	field :type do
		label "Class"
	end
	field :term
	field :stream
end
end

config.model 'Student' do
	weight -25
end
#config.model 'StudentProgression' do
	#weight -23
#end
config.model 'Programme' do
	weight -24
end


# First year models





config.model 'ActuarialScience2FirstYear' do
		exclude_fields :created_at, :updated_at, :id
				
	weight -23
end

config.model 'ActuarialScienceFirstYear' do
		exclude_fields :created_at, :updated_at, :id
				
	weight -22
end

config.model 'IndustrialChemistryFirstYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -21
end

config.model 'LeatherTechnologyFirstYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -20
end

config.model 'MathematicsFirstYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -19
end

config.model 'PolymerChemistryFirstYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -18
end

#Second year models

config.model 'ActuarialScienceSecondYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -17
end

config.model 'ActuarialScience2SecondYear' do
	exclude_fields :created_at, :updated_at, :id
			
weight -16
end


config.model 'ActuarialScience2SecondYear' do
	exclude_fields :created_at, :updated_at, :id
			
weight -15
end



config.model 'IndustrialChemistrySecondYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -14
end

config.model 'LeatherTechnologySecondYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -13
end

config.model 'MathematicsSecondYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -12
end

config.model 'PolymerChemistrySecondYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -11
end


# Third year models


config.model 'ActuarialScienceThirdYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -10
end

config.model 'IndustrialChemistryThirdYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -9
end


config.model 'LeatherTechnologyThirdYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -8
end

config.model 'MathematicsThirdYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -7
end

config.model 'PolymerChemistryThirdYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -6
end

#pOSTGRADUATE MODELS

#config.model 'MscLeatherTechnologyMark' do
	#exclude_fields :created_at, :updated_at
	
	#end


# Fourth year models

config.model 'ActuarialScienceFourthYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -5
end
config.model 'IndustrialChemistryFourthYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -4
end

config.model 'LeatherTechnologyFourthYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -3
end

config.model 'MathematicsFourthYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -2
end

config.model 'PolymerChemistryFourthYear' do
	exclude_fields :created_at, :updated_at, :id
	weight -1
end

config.model 'MscLeatherTechnologyMark' do
	exclude_fields :created_at, :updated_at, :id
	
end




#config.model 'Thesis' do
	#list do
		#field :student
		#field :field
		#field :thesis_title
		#field :programme
		
	#end
	#end


	#config.model 'Student' do  # Rename navigation for Exams model===================================================
	#navigation_label 'SYSTEM MENU LIST'
	#end
	config.model 'LeatherStageOne' do
		
		navigation_label'{==DIPLOMA EXAMS==}'

		exclude_fields :created_at, :updated_at, :id
	end 
	
	config.model 'LeatherStageTwo' do
		navigation_label '{==DIPLOMA EXAMS==}'
		exclude_fields :created_at, :updated_at, :id
	end 

	config.model 'LeatherStageThree' do
		navigation_label '{==DIPLOMA EXAMS==}'
		exclude_fields :created_at, :updated_at, :id
	end 
	
	
	config.model 'MscLeatherTechnologyMark' do  # Rename navigation for Exams model===================================================
	navigation_label '[POST-GRADUATE EXAMS]'
end

	
	config.model 'ActuarialScienceFirstYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(1)-[FIRST YEAR EXAMS]'
	
end


config.model 'ActuarialScience2FirstYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(1)[[[[[[[[[[[FIRST YEAR EXAMS]]]]]]]]]]]]]'
	
end

config.model 'IndustrialChemistryFirstYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(1)[[[[[[[[[[[FIRST YEAR EXAMS]]]]]]]]]]]]]'
end

config.model 'MathematicsFirstYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(1)[[[[[[[[[[[FIRST YEAR EXAMS]]]]]]]]]]]]]'
end

config.model 'PolymerChemistryFirstYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(1)[[[[[[[[[[[FIRST YEAR EXAMS]]]]]]]]]]]]]'
	end
	
config.model 'LeatherTechnologyFirstYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(1)[[[[[[[[[[[FIRST YEAR EXAMS]]]]]]]]]]]]]'
end



	
	
	
	config.model 'IndustrialChemistrySecondYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(2)[[[[[[[[[[[SECOND YEAR EXAMS]]]]]]]]]]]]]'
	end
	
	config.model 'ActuarialScienceSecondYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(2)[[[[[[[[[[[SECOND YEAR EXAMS]]]]]]]]]]]]]'
end

config.model 'MathematicsSecondYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(2)[[[[[[[[[[[SECOND YEAR EXAMS]]]]]]]]]]]]]'
end

config.model 'PolymerChemistrySecondYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(2)[[[[[[[[[[[SECOND YEAR EXAMS]]]]]]]]]]]]]'
	end
config.model 'LeatherTechnologySecondYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(2)[[[[[[[[[[[SECOND YEAR EXAMS]]]]]]]]]]]]]'
	end
	config.model 'ActuarialScience2SecondYear' do  # Rename navigation for Exams model===================================================
		navigation_label '(2)[[[[[[[[[[[SECOND YEAR EXAMS]]]]]]]]]]]]]'
		
	end






config.model 'ActuarialScienceThirdYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(3) ===> THIRD YEAR EXAMS'
end

config.model 'IndustrialChemistryThirdYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(3) ===> THIRD YEAR EXAMS'
end

config.model 'MathematicsThirdYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(3) ===> THIRD YEAR EXAMS'
end

config.model 'PolymerChemistryThirdYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(3) ===> THIRD YEAR EXAMS'
end

config.model 'LeatherTechnologyThirdYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(3) ===> THIRD YEAR EXAMS'
	end





config.model 'ActuarialScienceFourthYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(4) ===> FOURTH YEAR EXAMS'
	
end

config.model 'IndustrialChemistryFourthYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(4) ===> FOURTH YEAR EXAMS'
end

config.model 'MathematicsFourthYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(4) ===> FOURTH YEAR EXAMS'
end

config.model 'PolymerChemistryFourthYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(4) ===> FOURTH YEAR EXAMS'
end

config.model 'LeatherTechnologyFourthYear' do  # Rename navigation for Exams model===================================================
	navigation_label '(4) ===> FOURTH YEAR EXAMS'
	end




	
	config.model 'FinanceReport' do # The finance report model
		list do
			field :report_type
			end
		end

config.model 'FeeStatement' do                #HOW TO RENAME NAVIGATION PANEL IN RAILS_ADMIN
	navigation_label "Finance Management"
end

config.model 'TransportPayment' do                #HOW TO RENAME NAVIGATION PANEL IN RAILS_ADMIN
	navigation_label "School Finance"
  end

	config.model 'FinanceReport' do                #HOW TO RENAME NAVIGATION PANEL IN RAILS_ADMIN
		navigation_label "School Finance"
	  end

#config.model 'ExamResult' do  # Rename navigation for Exams model===================================================
	#navigation_label 'Postgraduate Examination Results'
	#end

#config.model 'Supervisor' do                #HOW TO RENAME NAVIGATION PANEL IN RAILS_ADMIN
	#navigation_label "RESEARCH MODULE"
  #end
   
#config.model 'SupervisorAllocation' do                #HOW TO RENAME NAVIGATION PANEL IN RAILS_ADMIN
	#navigation_label "RESEARCH MODULE"
#end

#config.model 'Thesis' do                #HOW TO RENAME NAVIGATION PANEL IN RAILS_ADMIN
	#navigation_label "RESEARCH MODULE"
#end
   




config.model 'FeeStructure' do
	
end
config.model 'FeePayment' do
    list do
	field :id do
		label "Receipt_no"
		end
	field :created_at do
			label "Date"
			strftime_format "%Y-%m-%d"          #  Change the date format
			end
	field :student
	field :level
	field :details
	field :invoiced
	field :paid
	#field :balance
	end
end
config.model 'FeeStructure' do  # Hide the fee structure model
	visible false
	end
config.model 'FeePayment' do
	
end
config.model 'FeeStatement' do
		visible false
	end
#config.model 'FeePayment' do  #HOW TO RENAME NAVIGATION PANEL IN RAILS_ADMIN
	#navigation_label "School Finance"
  #end

#config.model 'FeeStructure' do
	#parent FeePayment
#end
#config.model 'Student' do  # Rename navigation for students model
	#navigation_label 'ADMISSIONS MODULE'
	#end
#onfig.model 'FormOne' do
		#visible false
	# end

	config.model 'FormTwo' do
		visible false
	end

	config.model 'FormThree' do
		visible false
	end

	config.model 'FormFour' do
		visible false
	end

config.model 'StandardOne' do
	weight -9
end
config.model 'StandardTwo' do
	weight -8
end
#config.model 'StandardThree' do
	#weight -7
#end

config.model 'DayCare' do
	weight -1
end
config.model 'PlayGroup' do
	weight -2
end
config.model 'PrePrimaryOne' do
	weight -3
end

config.model 'PrePrimaryTwo' do
	weight -4
end

config.model 'GradeOne' do
	weight -5
end

config.model 'GradeTwo' do
	weight -6
end

config.model 'GradeThree' do
	weight -7
end

config.model 'GradeFour' do
	weight -8
end
config.model 'StandardFive' do
	weight -9
end
config.model 'StandardSix' do
	weight -10
end
config.model 'StandardSeven' do
	weight -11
end
config.model 'StandardEight' do
	weight -12
end
config.model 'Archive' do
	weight -13
end


config.model 'GradeThree' do
list do
	#field :adm_no
	field :created_at do
			label "Admission date"
			strftime_format "%d-%m-%Y"          #  Change the date format
			end
	field :name
	field :upi_number
	field :gender
	field :birthday
	#field :parent
	field :contact
	#field :previous_school
	field :type do
		label "Class"
	end
	field :term
	field :stream
end
end
config.model 'GradeTwo' do
list do
	#field :adm_no
	field :created_at do
			label "Admission date"
			strftime_format "%d-%m-%Y"          #  Change the date format
			end
	field :name
	field :upi_number
	field :gender
	field :birthday
	#field :parent
	field :contact
	#field :previous_school
	field :type do
		label "Class"
	end
	field :term
	field :stream
end
end
config.model 'GradeOne' do
list do
	#field :adm_no
	field :created_at do
			label "Admission date"
			strftime_format "%d-%m-%Y"          #  Change the date format
			end
	field :name
	field :upi_number
	field :gender
	field :birthday
	#field :parent
	field :contact
	#field :previous_school
	field :type do
		label "Class"
	end
	field :term
	field :stream
end
end
config.model 'StandardFour' do
list do
	#field :adm_no
	field :created_at do
			label "Admission date"
			strftime_format "%d-%m-%Y"          #  Change the date format
			end
	field :name
	field :upi_number
	field :gender
	field :birthday
	#field :parent
	field :contact
	#field :previous_school
	field :type do
		label "Class"
	end
	field :term
	field :stream
end
end
config.model 'StandardFive' do
list do
	#field :adm_no
	field :created_at do
			label "Admission date"
			strftime_format "%d-%m-%Y"          #  Change the date format
			end
	field :name
	field :upi_number
	field :gender
	field :birthday
	#field :parent
	field :contact
	#field :previous_school
	field :type do
		label "Class"
	end
	field :term
	field :stream
end
end
config.model 'StandardSix' do
list do
	#field :adm_no
	field :created_at do
			label "Admission date"
			strftime_format "%d-%m-%Y"          #  Change the date format
			end
	field :name
	field :upi_number
	field :gender
	field :birthday
	#field :parent
	field :contact
	#field :previous_school
	field :type do
		label "Class"
	end
	field :term
	field :stream
end
end
config.model 'StandardSeven' do
list do
	#field :adm_no
	field :created_at do
			label "Admission date"
			strftime_format "%d-%m-%Y"          #  Change the date format
			end
	field :name
	field :upi_number
	field :gender
	field :birthday
	#field :parent
	field :contact
	#field :previous_school
	field :type do
		label "Class"
	end
	field :term
	field :stream
end
end
config.model 'StandardEight' do
list do
	#field :adm_no
	field :created_at do
			label "Admission date"
			strftime_format "%d-%m-%Y"          #  Change the date format
			end
	field :name
	field :upi_number
	field :gender
	field :birthday
	#field :parent
	field :contact
	#field :previous_school
	field :type do
		label "Class"
	end
	field :term
	field :stream
end
end
config.model 'Archive' do
list do
	#field :adm_no
	field :created_at do
			label "Admission date"
			strftime_format "%d-%m-%Y"          #  Change the date format
			end
	field :name
	field :upi_number
	field :gender
	field :birthday
	#field :parent
	field :contact
	#field :previous_school
	field :type do
		label "Class"
	end
	field :term
	field :stream
end
end
config.model 'PlayGroup' do #========play group table fields
list do
	#field :adm_no
	field :created_at do
			label "Admission date"
			strftime_format "%d-%m-%Y"          #  Change the date format
			end
	field :name
	field :upi_number
	field :gender
	field :birthday
	#field :parent
	field :contact
	#field :previous_school
	field :type do
		label "Class"
	end
	field :term
	field :stream
end
end
config.model 'PrePrimaryOne' do #=====================Kg1 table fields
list do
	#field :adm_no
	field :created_at do
			label "Admission date"
			strftime_format "%d-%m-%Y"          #  Change the date format
			end
	field :name
	field :upi_number
	field :gender
	field :birthday
	#field :parent
	field :contact
	#field :previous_school
	field :type do
		label "Class"
	end
	field :term
	field :stream
end
end
#config.model 'PrePrimaryTwo' do # ========================Kg2 table fields
#list do
	#field :adm_no
	#field :created_at do
		#	label "Admission date"
		#strftime_format "%d-%m-%Y"          #  Change the date format
		#	end
#	field :name
#	field :upi_number
#	field :gender
#	field :birthday
	#field :parent
#	field :contact
	#field :previous_school
	#field :type do
	#	label "Class"
	#end
	#field :term
	#field :stream
#end
#end
#config.model 'DayCare' do #====================kg3 table fields
#list do
	#field :adm_no
	#field :created_at do
	#		label "Admission date"
	#		strftime_format "%d-%m-%Y"          #  Change the date format
	#		end
#	field :name
#	field :upi_number
	#field :gender
	#field :birthday
	#field :parent
	#field :contact
	#field :previous_school
	#field :type do
	#	label "Class"
	#end
	#field :term
	#field :stream
#end
#end
#config.model 'BabyClass' do #=====================Kg1 table fields
#list do
	#field :adm_no
	#field :created_at do
		#	label "Admission date"
		#	strftime_format "%d-%m-%Y"          #  Change the date format
	#		end
	#field :name
	#field :upi_number
	#field :gender
	#field :birthday
	#field :parent
	#field :contact
	#field :previous_school
	#field :type do
		#label "Class"
	#end
	#field :term
	#field :stream
#end
#end

#model Gradefour
#config.model 'GradeFour' do #=====================Kg1 table fields
#list do
	#field :adm_no
	#field :created_at do
			#label "Admission date"
			#strftime_format "%d-%m-%Y"          #  Change the date format
			#end
	#field :name
	#field :upi_number
	#field :gender
	#field :birthday
	#field :parent
	#field :contact
	#field :previous_school
	#field :type do
		#label "Class"
	#end
	#field :term
	#field :stream
#end
#end






# Change columns ordering

#RailsAdmin.config do |config|
#config.model 'TransportPayment ' do #=====================Transport payment table fields
#list do
#field :student
#field :route
#field :amount
	#end
#end
#end

#config.model 'FinanceReport ' do #=====================FinanceReport table fields
#list do
#field :report_type
#end
#end

#config.model 'FeePayment' do #Configure mapping key for fee payment model (name)
    #import do
      #mapping_key :name
    #end
  #end

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true
  
  
  





  config.actions do
    dashboard  do #========================= to disable dashboard stats
    	statistics false
    end                 # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    #print_record #==================can be used for custom action
   
   show  do # No model has the show Method
    	only [""]
	end
    
    edit 
    
		
	delete do # No model has the delete Method
    	only [""]
end

	show_in_app do
		  
		only ['ActuarialScience2FirstYear', "ActuarialScienceFirstYear", "ActuarialScienceSecondYear", "ActuarialScience2SecondYear", "ActuarialScienceThirdYear", "ActuarialScienceFourthYear", 
			"LeatherTechnologyFirstYear", "LeatherTechnologySecondYear", "LeatherTechnologyThirdYear", "LeatherTechnologyFourthYear",
			"IndustrialChemistryFirstYear", "IndustrialChemistrySecondYear", "IndustrialChemistryThirdYear", "IndustrialChemistryFourthYear",
			"MathematicsFirstYear", "MathematicsSecondYear", "MathematicsThirdYear", "MathematicsFourthYear",
			"PolymerChemistryFirstYear", "PolymerChemistrySecondYear", "PolymerChemistryThirdYear", "PolymerChemistryFourthYear", "MscLeatherTechnologyMark", "LeatherStageOne", "LeatherStageTwo", "LeatherStageThree"]
		end 
	  
   
  
    
    
    ## With an audit adapter, you can add:
    #history_index
    #history_show

RailsAdmin.config do |config|
  config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)
end
end
end
