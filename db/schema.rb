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

ActiveRecord::Schema.define(version: 20150513173526) do

  create_table "account_logins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_surveys", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colleges", force: :cascade do |t|
    t.string   "college_name", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "company_name", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "company_infos", force: :cascade do |t|
    t.integer  "company_id",   limit: 4
    t.string   "street",       limit: 255
    t.string   "city",         limit: 255
    t.string   "state",        limit: 255
    t.string   "zip",          limit: 255
    t.string   "country_code", limit: 255
    t.string   "area_code",    limit: 255
    t.string   "prefix",       limit: 255
    t.string   "suffix",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "company_infos", ["company_id"], name: "index_company_infos_on_company_id", using: :btree

  create_table "degrees", force: :cascade do |t|
    t.string   "major_name", limit: 255
    t.integer  "type",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "giving_backs", force: :cascade do |t|
    t.integer  "user_id",            limit: 4
    t.string   "subject",            limit: 255
    t.string   "position",           limit: 255
    t.boolean  "approved",           limit: 1
    t.boolean  "completed",          limit: 1
    t.integer  "type",               limit: 4
    t.string   "contact_first_name", limit: 255
    t.string   "contact_last_name",  limit: 255
    t.string   "contact_email",      limit: 255
    t.integer  "company_id",         limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.text     "description",        limit: 65535
    t.text     "requirements",       limit: 65535
  end

  add_index "giving_backs", ["company_id"], name: "index_giving_backs_on_company_id", using: :btree
  add_index "giving_backs", ["user_id"], name: "index_giving_backs_on_user_id", using: :btree

  create_table "graduate_degrees", force: :cascade do |t|
    t.integer  "user_id",         limit: 4
    t.integer  "college_id",      limit: 4
    t.integer  "degree_id",       limit: 4
    t.integer  "status",          limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.date     "graduation_date"
  end

  add_index "graduate_degrees", ["college_id"], name: "index_graduate_degrees_on_college_id", using: :btree
  add_index "graduate_degrees", ["degree_id"], name: "index_graduate_degrees_on_degree_id", using: :btree
  add_index "graduate_degrees", ["user_id"], name: "index_graduate_degrees_on_user_id", using: :btree

  create_table "homepages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string   "username",             limit: 255
    t.string   "passoword",            limit: 255
    t.string   "first_name",           limit: 255
    t.string   "last_name",            limit: 255
    t.integer  "type",                 limit: 4
    t.datetime "last_login_timestamp"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "report_displays", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "report_options", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saved_list_users", force: :cascade do |t|
    t.integer  "saved_list_id", limit: 4
    t.integer  "user_id",       limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "saved_list_users", ["saved_list_id"], name: "index_saved_list_users_on_saved_list_id", using: :btree
  add_index "saved_list_users", ["user_id"], name: "index_saved_list_users_on_user_id", using: :btree

  create_table "saved_lists", force: :cascade do |t|
    t.integer  "login_id",   limit: 4
    t.string   "list_name",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.date     "date_saved"
  end

  add_index "saved_lists", ["login_id"], name: "index_saved_lists_on_login_id", using: :btree

  create_table "searches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "survey_question_option_choices", force: :cascade do |t|
    t.integer  "survey_question_id", limit: 4
    t.integer  "display_order",      limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.text     "text",               limit: 65535
  end

  add_index "survey_question_option_choices", ["survey_question_id"], name: "index_survey_question_option_choices_on_survey_question_id", using: :btree

  create_table "survey_question_options", force: :cascade do |t|
    t.integer  "survey_question_id", limit: 4
    t.integer  "display_order",      limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.text     "text",               limit: 65535
  end

  add_index "survey_question_options", ["survey_question_id"], name: "index_survey_question_options_on_survey_question_id", using: :btree

  create_table "survey_questions", force: :cascade do |t|
    t.integer  "survey_id",     limit: 4
    t.integer  "type",          limit: 4
    t.integer  "display_order", limit: 4
    t.boolean  "required",      limit: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.text     "text",          limit: 65535
  end

  add_index "survey_questions", ["survey_id"], name: "index_survey_questions_on_survey_id", using: :btree

  create_table "surveys", force: :cascade do |t|
    t.integer  "login_id",           limit: 4
    t.string   "survey_name",        limit: 255
    t.integer  "status",             limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.text     "survey_description", limit: 65535
    t.date     "date_created"
    t.integer  "user_id",            limit: 4
  end

  add_index "surveys", ["login_id"], name: "index_surveys_on_login_id", using: :btree
  add_index "surveys", ["user_id"], name: "index_surveys_on_user_id", using: :btree

  create_table "undergraduate_degrees", force: :cascade do |t|
    t.integer  "user_id",         limit: 4
    t.integer  "college_id",      limit: 4
    t.integer  "degree_id",       limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.date     "graduation_date"
  end

  add_index "undergraduate_degrees", ["college_id"], name: "index_undergraduate_degrees_on_college_id", using: :btree
  add_index "undergraduate_degrees", ["degree_id"], name: "index_undergraduate_degrees_on_degree_id", using: :btree
  add_index "undergraduate_degrees", ["user_id"], name: "index_undergraduate_degrees_on_user_id", using: :btree

  create_table "user_informations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_phones", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.string   "country_code", limit: 255
    t.string   "area_code",    limit: 255
    t.string   "prefix",       limit: 255
    t.string   "suffix",       limit: 255
    t.string   "extension",    limit: 255
    t.integer  "type",         limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "user_phones", ["user_id"], name: "index_user_phones_on_user_id", using: :btree

  create_table "user_survey_responses", force: :cascade do |t|
    t.integer  "user_survey_id",                   limit: 4
    t.integer  "survey_question_id",               limit: 4
    t.integer  "survey_question_option_id",        limit: 4
    t.integer  "survey_question_option_choice_id", limit: 4
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.text     "response_text",                    limit: 65535
  end

  add_index "user_survey_responses", ["survey_question_id"], name: "index_user_survey_responses_on_survey_question_id", using: :btree
  add_index "user_survey_responses", ["survey_question_option_choice_id"], name: "fk_rails_78d8ef8246", using: :btree
  add_index "user_survey_responses", ["survey_question_option_id"], name: "index_user_survey_responses_on_survey_question_option_id", using: :btree
  add_index "user_survey_responses", ["user_survey_id"], name: "index_user_survey_responses_on_user_survey_id", using: :btree

  create_table "user_surveys", force: :cascade do |t|
    t.integer  "user_id",        limit: 4
    t.integer  "survey_id",      limit: 4
    t.string   "date_completed", limit: 255
    t.boolean  "anonymous",      limit: 1
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "user_surveys", ["survey_id"], name: "index_user_surveys_on_survey_id", using: :btree
  add_index "user_surveys", ["user_id"], name: "index_user_surveys_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.integer  "login_id",              limit: 4
    t.string   "email_addr",            limit: 255
    t.string   "city",                  limit: 255
    t.string   "state",                 limit: 255
    t.string   "zip",                   limit: 255
    t.string   "spouse_first_name",     limit: 255
    t.string   "spouse_middle_initial", limit: 255
    t.string   "spouse_last_name",      limit: 255
    t.integer  "number_children",       limit: 4
    t.string   "ethnicity",             limit: 255
    t.integer  "general_opt_in",        limit: 4
    t.integer  "email_opt_in",          limit: 4
    t.integer  "phone_opt_in",          limit: 4
    t.integer  "badges_opt_in",         limit: 4
    t.integer  "status",                limit: 4
    t.integer  "company_id",            limit: 4
    t.string   "job_title",             limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.date     "birth_day"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "salary_range",          limit: 4
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree
  add_index "users", ["login_id"], name: "index_users_on_login_id", using: :btree

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "company_infos", "companies"
  add_foreign_key "giving_backs", "companies"
  add_foreign_key "giving_backs", "users"
  add_foreign_key "graduate_degrees", "colleges"
  add_foreign_key "graduate_degrees", "degrees"
  add_foreign_key "graduate_degrees", "users"
  add_foreign_key "saved_list_users", "saved_lists"
  add_foreign_key "saved_list_users", "users"
  add_foreign_key "saved_lists", "logins"
  add_foreign_key "survey_question_option_choices", "survey_questions"
  add_foreign_key "survey_question_options", "survey_questions"
  add_foreign_key "survey_questions", "surveys"
  add_foreign_key "surveys", "logins"
  add_foreign_key "surveys", "users"
  add_foreign_key "undergraduate_degrees", "colleges"
  add_foreign_key "undergraduate_degrees", "degrees"
  add_foreign_key "undergraduate_degrees", "users"
  add_foreign_key "user_phones", "users"
  add_foreign_key "user_survey_responses", "survey_question_option_choices"
  add_foreign_key "user_survey_responses", "survey_question_options"
  add_foreign_key "user_survey_responses", "survey_questions"
  add_foreign_key "user_survey_responses", "user_surveys"
  add_foreign_key "user_surveys", "surveys"
  add_foreign_key "user_surveys", "users"
  add_foreign_key "users", "companies"
  add_foreign_key "users", "logins"
end
