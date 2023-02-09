class CreateActuarialScience2FirstYears < ActiveRecord::Migration
  def change
    create_table :actuarial_science2_first_years do |t|
      t.string :admission_no
      t.references :student, index: true, foreign_key: true
      t.integer :sma_1117
      t.integer :sas_1190
      t.integer :igs_1104
      t.integer :igs_1201
      t.integer :hns_1100
      t.integer :bec_1101
      t.integer :bba_2201
      t.integer :bcm_1101
      t.integer :sas_1101
      t.integer :sas_1201
      t.integer :sas_1250
      t.integer :sas_1290
      t.integer :bec_1204
      t.integer :sma_1218
      t.integer :mean
      t.text :recommendation
      t.string :grouping

      t.timestamps null: false
    end
  end
end
