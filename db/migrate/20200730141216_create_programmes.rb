class CreateProgrammes < ActiveRecord::Migration
  def change
    create_table :programmes do |t|
      t.string :name
      t.string :level

      t.timestamps null: false
    end
  end
end
