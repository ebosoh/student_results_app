class RenameHns < ActiveRecord::Migration
  def change
    rename_column :leather_stage_ones, :hns_200, :hns_1100
  end
end
