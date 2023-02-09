class RenameSchInLtFirst < ActiveRecord::Migration
  def change
    rename_column :leather_technology_first_years, :sch_2102, :slt_2101
  end
end
