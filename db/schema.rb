# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20230120154625) do

  create_table "actuarial_science2_first_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.integer  "sma_1117"
    t.integer  "sas_1190"
    t.integer  "igs_1104"
    t.integer  "igs_1201"
    t.integer  "hns_1100"
    t.integer  "bec_1101"
    t.integer  "bba_2201"
    t.integer  "bcm_1101"
    t.integer  "sas_1101"
    t.integer  "sas_1201"
    t.integer  "sas_1250"
    t.integer  "sas_1290"
    t.integer  "bec_1204"
    t.integer  "sma_1218"
    t.integer  "mean"
    t.text     "recommendation"
    t.string   "grouping"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "academic_year"
  end

  add_index "actuarial_science2_first_years", ["student_id"], name: "index_actuarial_science2_first_years_on_student_id"

  create_table "actuarial_science2_second_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "sas_2101"
    t.integer  "sas_2291"
    t.integer  "sas_2190"
    t.integer  "sas_2192"
    t.integer  "sas_2191"
    t.integer  "sma_2110"
    t.integer  "sma_2118"
    t.integer  "igs_2101"
    t.integer  "sas_2201"
    t.integer  "sas_2290"
    t.integer  "sma_2232"
    t.integer  "sma_3261"
    t.integer  "igs_2102"
    t.decimal  "mean"
    t.text     "recommendation"
    t.integer  "grouping"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "actuarial_science2_second_years", ["student_id"], name: "index_actuarial_science2_second_years_on_student_id"

  create_table "actuarial_science_first_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "bsm_2114"
    t.integer  "hrd_2101"
    t.integer  "bsm_1102"
    t.integer  "sas_1101"
    t.integer  "sas_1190"
    t.integer  "sma_2101"
    t.integer  "hns_1100"
    t.integer  "bsm_1204"
    t.integer  "sas_1201"
    t.integer  "sas_1250"
    t.integer  "sma_2102"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "sas_1290"
    t.decimal  "mean_1",          precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.string   "grouping"
  end

  add_index "actuarial_science_first_years", ["student_id"], name: "index_actuarial_science_first_years_on_student_id"

  create_table "actuarial_science_fourth_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "bba_2201"
    t.integer  "sas_4101"
    t.integer  "sas_4102"
    t.integer  "sas_4190"
    t.integer  "sas_4191"
    t.integer  "sas_4199"
    t.integer  "sas_4201"
    t.integer  "sas_4290"
    t.integer  "sas_4291"
    t.integer  "sas_4292"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "sas_3399"
    t.decimal  "mean_4",          precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.string   "grouping"
  end

  add_index "actuarial_science_fourth_years", ["student_id"], name: "index_actuarial_science_fourth_years_on_student_id"

  create_table "actuarial_science_second_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "sas_2101"
    t.integer  "sas_2190"
    t.integer  "sas_2191"
    t.integer  "sas_2192"
    t.integer  "sma_2110"
    t.integer  "bsm_1101"
    t.integer  "sma_3261"
    t.integer  "sma_2232"
    t.integer  "sas_2201"
    t.integer  "sas_2290"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "sas_2291"
    t.decimal  "mean_2",          precision: 2, scale: 3
    t.text     "recommendation"
    t.string   "grouping"
    t.decimal  "cumulative_mean"
  end

  add_index "actuarial_science_second_years", ["student_id"], name: "index_actuarial_science_second_years_on_student_id"

  create_table "actuarial_science_third_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "sas_3101"
    t.integer  "sas_3102"
    t.integer  "sas_3103"
    t.integer  "sas_3104"
    t.integer  "sas_3190"
    t.integer  "sas_3191"
    t.integer  "sas_3201"
    t.integer  "sas_3202"
    t.integer  "sas_3203"
    t.integer  "sas_3204"
    t.integer  "sas_3250"
    t.integer  "sas_3290"
    t.decimal  "mean_3",          precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "grouping"
  end

  add_index "actuarial_science_third_years", ["student_id"], name: "index_actuarial_science_third_years_on_student_id"

  create_table "cohorts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exam_results", force: :cascade do |t|
    t.date     "year"
    t.string   "term"
    t.integer  "student_id"
    t.integer  "grammar"
    t.integer  "composition"
    t.integer  "lugha"
    t.integer  "insha"
    t.integer  "maths"
    t.integer  "science"
    t.integer  "social_studies"
    t.integer  "christian_religious_education"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "industrial_chemistry_first_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "sch_1101"
    t.integer  "sch_1102"
    t.integer  "sch_1103"
    t.integer  "sma_1108"
    t.integer  "sma_1117"
    t.integer  "igs_1104"
    t.integer  "hns_1100"
    t.integer  "sch_1201"
    t.integer  "sch_1202"
    t.integer  "sch_1203"
    t.integer  "ccs_1101"
    t.integer  "sma_1218"
    t.integer  "sas_1201"
    t.integer  "igs_1102"
    t.decimal  "mean",            precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "grouping"
    t.integer  "igs_1201"
    t.integer  "ccs_1201"
  end

  add_index "industrial_chemistry_first_years", ["student_id"], name: "index_industrial_chemistry_first_years_on_student_id"

  create_table "industrial_chemistry_fourth_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "bba_2201"
    t.integer  "sch_4101"
    t.integer  "sch_4199"
    t.integer  "igs_4101"
    t.integer  "sch_4102"
    t.integer  "sch_4103"
    t.integer  "sch_4104"
    t.integer  "sch_4105"
    t.integer  "sch_4106"
    t.integer  "sch_4201"
    t.integer  "sch_4202"
    t.integer  "igs_4102"
    t.integer  "sch_4203"
    t.integer  "sch_4204"
    t.integer  "sch_4205"
    t.integer  "sch_4206"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "sch_4299"
    t.string   "sch_3399"
    t.integer  "sch_3202"
    t.decimal  "mean_4"
    t.decimal  "cumulative_mean"
    t.text     "recommendation"
    t.integer  "grouping"
  end

  add_index "industrial_chemistry_fourth_years", ["student_id"], name: "index_industrial_chemistry_fourth_years_on_student_id"

  create_table "industrial_chemistry_second_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "sch_2101"
    t.integer  "sch_2102"
    t.integer  "sch_2103"
    t.integer  "sch_2104"
    t.integer  "sch_2105"
    t.integer  "sas_2101"
    t.integer  "igs_2101"
    t.integer  "sch_2201"
    t.integer  "sch_2202"
    t.integer  "sch_2203"
    t.integer  "sch_2204"
    t.integer  "sch_2205"
    t.integer  "sch_2206"
    t.integer  "igs_2102"
    t.decimal  "mean",            precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "grouping"
  end

  add_index "industrial_chemistry_second_years", ["student_id"], name: "index_industrial_chemistry_second_years_on_student_id"

  create_table "industrial_chemistry_third_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "sch_3101"
    t.integer  "sch_3102"
    t.integer  "sch_3103"
    t.integer  "sch_3104"
    t.integer  "sch_3106"
    t.integer  "sch_3107"
    t.integer  "igs_3101"
    t.integer  "sch_3201"
    t.integer  "sch_3202"
    t.integer  "sch_3203"
    t.integer  "sch_3204"
    t.integer  "sch_3205"
    t.integer  "sch_3206"
    t.integer  "igs_3102"
    t.decimal  "mean",            precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "grouping"
  end

  add_index "industrial_chemistry_third_years", ["student_id"], name: "index_industrial_chemistry_third_years_on_student_id"

  create_table "leather_stage_ones", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "slt_0101"
    t.integer  "igs_0201"
    t.integer  "slt_0102"
    t.integer  "tdt_0104"
    t.integer  "slt_0103"
    t.integer  "tdt_0103"
    t.integer  "slt_0104"
    t.integer  "slt_0105"
    t.integer  "slt_0106"
    t.integer  "slt_0107"
    t.integer  "slt_0108"
    t.integer  "hns_1100"
    t.decimal  "mean"
    t.text     "recommendation"
    t.integer  "grouping"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "leather_stage_threes", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "slt_0201"
    t.integer  "slt_0202"
    t.integer  "slt_0203"
    t.integer  "bba_0215"
    t.integer  "slt_0204"
    t.integer  "slt_0205"
    t.integer  "slt_0206"
    t.integer  "slt_0207"
    t.string   "slt_0199"
    t.decimal  "mean"
    t.text     "recommendation"
    t.integer  "grouping"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "leather_stage_threes", ["student_id"], name: "index_leather_stage_threes_on_student_id"

  create_table "leather_stage_twos", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "slt_0109"
    t.integer  "bba_0101"
    t.integer  "bba_0102"
    t.integer  "slt_0111"
    t.integer  "slt_0112"
    t.integer  "slt_0113"
    t.integer  "slt_0114"
    t.integer  "slt_0115"
    t.integer  "slt_0116"
    t.integer  "slt_0117"
    t.decimal  "mean"
    t.text     "recommendation"
    t.integer  "grouping"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "leather_stage_twos", ["student_id"], name: "index_leather_stage_twos_on_student_id"

  create_table "leather_technology_first_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "igs_1104"
    t.integer  "sch_1101"
    t.integer  "ccs_1101"
    t.integer  "slt_1101"
    t.integer  "slt_1102"
    t.integer  "sma_2104"
    t.integer  "hns_1100"
    t.integer  "sch_1201"
    t.integer  "slt_1201"
    t.integer  "slt_1202"
    t.integer  "slt_1203"
    t.integer  "sch_1202"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "sch_1102"
    t.integer  "igs_1201"
    t.decimal  "mean",            precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.string   "grouping"
  end

  add_index "leather_technology_first_years", ["student_id"], name: "index_leather_technology_first_years_on_student_id"

  create_table "leather_technology_fourth_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "bba_2201"
    t.integer  "slt_4101"
    t.integer  "slt_4102"
    t.integer  "slt_4103"
    t.integer  "slt_4199"
    t.integer  "igs_4101"
    t.string   "slt_3399"
    t.integer  "slt_4299"
    t.integer  "slt_4201"
    t.integer  "slt_4202"
    t.integer  "slt_4203"
    t.integer  "slt_4204"
    t.integer  "igs_4202"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "slt_2410"
    t.decimal  "mean_4"
    t.decimal  "cumulative_mean"
    t.text     "recommendation"
    t.integer  "grouping"
  end

  add_index "leather_technology_fourth_years", ["student_id"], name: "index_leather_technology_fourth_years_on_student_id"

  create_table "leather_technology_second_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "sch_2202"
    t.integer  "slt_2101"
    t.integer  "slt_2102"
    t.integer  "slt_2103"
    t.integer  "sch_2102"
    t.integer  "slt_2105"
    t.integer  "slt_2201"
    t.integer  "slt_2202"
    t.integer  "slt_2203"
    t.integer  "sch_2203"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "slt_2104"
    t.decimal  "mean",            precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.string   "grouping"
  end

  add_index "leather_technology_second_years", ["student_id"], name: "index_leather_technology_second_years_on_student_id"

  create_table "leather_technology_third_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "slt_3101"
    t.integer  "slt_3102"
    t.integer  "slt_3103"
    t.integer  "slt_3104"
    t.integer  "slt_3105"
    t.integer  "sch_3106"
    t.integer  "igs_3101"
    t.integer  "slt_3201"
    t.integer  "slt_3202"
    t.integer  "slt_3203"
    t.integer  "slt_3204"
    t.integer  "slt_3205"
    t.integer  "igs_3202"
    t.decimal  "mean",            precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "grouping"
  end

  add_index "leather_technology_third_years", ["student_id"], name: "index_leather_technology_third_years_on_student_id"

  create_table "mathematics_first_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "igs_1104"
    t.integer  "hns_1100"
    t.integer  "ccs_1101"
    t.integer  "sma_1108"
    t.integer  "sma_1109"
    t.integer  "sma_1105"
    t.integer  "igs_1201"
    t.integer  "ccs_1203"
    t.integer  "sma_1117"
    t.integer  "sma_1248"
    t.integer  "sma_1211"
    t.integer  "sas_1201"
    t.decimal  "mean",            precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "grouping"
  end

  add_index "mathematics_first_years", ["student_id"], name: "index_mathematics_first_years_on_student_id"

  create_table "mathematics_fourth_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "sma_4126"
    t.integer  "sma_4145"
    t.integer  "ccs_4102"
    t.integer  "sma_4199"
    t.integer  "sma_4147"
    t.integer  "sma_4143"
    t.integer  "sma_4153"
    t.integer  "sma_4174"
    t.integer  "sas_4110"
    t.integer  "sma_4131"
    t.integer  "sma_4241"
    t.integer  "sma_4239"
    t.integer  "sma_4299"
    t.integer  "sma_4248"
    t.integer  "sma_4282"
    t.decimal  "mean",            precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "grouping"
  end

  add_index "mathematics_fourth_years", ["student_id"], name: "index_mathematics_fourth_years_on_student_id"

  create_table "mathematics_second_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "ccs_2102"
    t.integer  "sma_2164"
    t.integer  "sma_1218"
    t.integer  "sma_2149"
    t.integer  "sma_2112"
    t.integer  "sas_2101"
    t.integer  "sma_2224"
    t.integer  "sma_2119"
    t.integer  "sma_2232"
    t.integer  "sma_2215"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "igs_2101"
    t.integer  "igs_2202"
    t.integer  "mean"
    t.integer  "cumulative_mean"
    t.string   "recommendation"
    t.date     "grouping"
  end

  add_index "mathematics_second_years", ["student_id"], name: "index_mathematics_second_years_on_student_id"

  create_table "mathematics_third_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "sma_3151"
    t.integer  "sma_3121"
    t.integer  "sma_3158"
    t.integer  "sma_3133"
    t.integer  "sma_3164"
    t.integer  "ccs_3102"
    t.integer  "sma_3259"
    t.integer  "sma_3244"
    t.integer  "sma_3240"
    t.integer  "sma_3237"
    t.integer  "sma_3242"
    t.integer  "sma_3252"
    t.integer  "sas_3204"
    t.integer  "sma_3281"
    t.string   "sma_3399"
    t.decimal  "mean",            precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "grouping"
  end

  add_index "mathematics_third_years", ["student_id"], name: "index_mathematics_third_years_on_student_id"

  create_table "msc_leather_technology_marks", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "slt_6100"
    t.integer  "slt_6101"
    t.integer  "slt_6102"
    t.integer  "slt_6103"
    t.integer  "slt_6104"
    t.integer  "slt_6105"
    t.integer  "slt_6106"
    t.integer  "slt_6107"
    t.integer  "slt_6108"
    t.integer  "slt_6109"
    t.integer  "slt_6110"
    t.integer  "slt_6111"
    t.integer  "slt_6112"
    t.integer  "slt_6113"
    t.integer  "slt_6115"
    t.integer  "slt_6116"
    t.integer  "slt_6117"
    t.integer  "slt_6118"
    t.string   "slt_6200"
    t.decimal  "mean",           precision: 2, scale: 2
    t.string   "recommendation"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "polymer_chemistry_first_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "sch_1101"
    t.integer  "sch_1102"
    t.integer  "sma_1108"
    t.integer  "sma_1117"
    t.integer  "igs_1104"
    t.integer  "hns_1100"
    t.integer  "sch_1201"
    t.integer  "sch_1202"
    t.integer  "scp_1201"
    t.integer  "ccs_1200"
    t.integer  "sma_1218"
    t.integer  "sas_1201"
    t.integer  "igs_1201"
    t.decimal  "mean",            precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "grouping"
  end

  add_index "polymer_chemistry_first_years", ["student_id"], name: "index_polymer_chemistry_first_years_on_student_id"

  create_table "polymer_chemistry_fourth_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "bba_2201"
    t.integer  "scp_4101"
    t.integer  "scp_4102"
    t.integer  "scp_4199"
    t.integer  "igs_4101"
    t.integer  "scp_4201"
    t.integer  "scp_4202"
    t.integer  "scp_4203"
    t.integer  "scp_4299"
    t.integer  "igs_4102"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "scp_3399"
    t.decimal  "mean",            precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.string   "grouping"
  end

  add_index "polymer_chemistry_fourth_years", ["student_id"], name: "index_polymer_chemistry_fourth_years_on_student_id"

  create_table "polymer_chemistry_second_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "scp_2101"
    t.integer  "sch_2102"
    t.integer  "sch_2103"
    t.integer  "sch_2104"
    t.integer  "sch_2105"
    t.integer  "sch_2106"
    t.integer  "igs_2101"
    t.integer  "scp_2201"
    t.integer  "sch_2202"
    t.integer  "sch_2203"
    t.integer  "sch_2204"
    t.integer  "sch_2205"
    t.integer  "sch_2206"
    t.integer  "igs_2102"
    t.decimal  "mean",            precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "grouping"
  end

  add_index "polymer_chemistry_second_years", ["student_id"], name: "index_polymer_chemistry_second_years_on_student_id"

  create_table "polymer_chemistry_third_years", force: :cascade do |t|
    t.string   "admission_no"
    t.integer  "student_id"
    t.string   "academic_year"
    t.integer  "scp_3101"
    t.integer  "scp_3102"
    t.integer  "scp_3103"
    t.integer  "scp_3104"
    t.integer  "scp_3105"
    t.integer  "scp_3106"
    t.integer  "igs_3101"
    t.integer  "scp_3201"
    t.integer  "scp_3202"
    t.integer  "sch_3203"
    t.integer  "scp_3203"
    t.integer  "scp_3204"
    t.integer  "scp_3205"
    t.integer  "igs_3102"
    t.decimal  "mean",            precision: 2, scale: 3
    t.decimal  "cumulative_mean", precision: 2, scale: 3
    t.text     "recommendation"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "grouping"
  end

  add_index "polymer_chemistry_third_years", ["student_id"], name: "index_polymer_chemistry_third_years_on_student_id"

  create_table "programmes", force: :cascade do |t|
    t.string   "name"
    t.string   "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_progressions", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "academic_year"
    t.string   "year_of_study"
    t.string   "semester"
    t.string   "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "cause"
    t.date     "appeal_date"
    t.string   "board_decision"
    t.date     "resumption_date"
    t.text     "details"
    t.date     "decision_date"
  end

  add_index "student_progressions", ["student_id"], name: "index_student_progressions_on_student_id"

  create_table "students", force: :cascade do |t|
    t.string   "admission_no"
    t.string   "name"
    t.string   "gender"
    t.integer  "programme_id"
    t.date     "batch"
    t.string   "faculty"
    t.string   "department"
    t.string   "level"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "cohort_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
