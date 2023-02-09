class RenameColumnsInStageOne < ActiveRecord::Migration
  def change
    rename_column :leather_stage_ones, :slt_1101, :slt_0101
    rename_column :leather_stage_ones, :slt_1102, :slt_0102
    
  end
end
