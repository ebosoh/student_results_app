class RenameColumnsInLtFirst < ActiveRecord::Migration
  def change
    
    rename_column :leather_technology_first_years, :hrd_2101, :bsm_2114
    rename_column :leather_technology_first_years, :ics_2100, :sch_1101
    rename_column :leather_technology_first_years, :sma_2104, :sch_1102
    rename_column :leather_technology_first_years, :sch_2100, :slt_1101
    rename_column :leather_technology_first_years, :sch_1102, :slt_2101
    rename_column :leather_technology_first_years, :slt_2100, :sma_1103
    rename_column :leather_technology_first_years, :slt_2101, :ccs_1101
    rename_column :leather_technology_first_years, :bsm_2111, :hns_1100
    rename_column :leather_technology_first_years, :szl_2111, :sch_1201
    rename_column :leather_technology_first_years, :sta_2100, :slt_1201
    rename_column :leather_technology_first_years, :sch_2101, :slt_1202
    rename_column :leather_technology_first_years, :sch_2103, :slt_1203
    rename_column :leather_technology_first_years, :slt_2201, :sch_1202
    remove_column :leather_technology_first_years, :slt_2200
    remove_column :leather_technology_first_years, :slt_2205
    remove_column :leather_technology_first_years, :slt_2202
  end
end
