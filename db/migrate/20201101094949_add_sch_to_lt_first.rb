class AddSchToLtFirst < ActiveRecord::Migration
  #def change
    #add_column :leather_technology_first_years, :sch_1102, :integer, :after => :sch_1101
    
   def self.up
    execute "ALTER TABLE leather_technology_first_years ADD COLUMN sch_1102 INTEGER 
      AFTER sch_1101"
  end

  def self.down
    remove_column :leather_technology_first_years, :sch_1102
  end

 
    
  end

