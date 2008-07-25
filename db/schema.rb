# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20080725215201) do

  create_table "afiliacao", :id => false, :force => true do |t|
    t.integer "id_afiliacao",   :limit => 10,  :null => false
    t.string  "Nome_portugues", :limit => 100
    t.string  "Nome_ingles",    :limit => 100
    t.string  "Nome_espanhol",  :limit => 100
    t.string  "link1",          :limit => 200
    t.string  "link2",          :limit => 200
    t.string  "Link3",          :limit => 200
  end

  add_index "afiliacao", ["id_afiliacao"], :name => "id_afiliacao"

  create_table "comentarios", :primary_key => "id_comentario", :force => true do |t|
    t.integer  "id_projeto", :limit => 20,         :default => 0,   :null => false
    t.string   "nome",       :limit => 50,         :default => "",  :null => false
    t.string   "nprojeto",   :limit => 80,         :default => "",  :null => false
    t.string   "Comunidade", :limit => 80,         :default => "",  :null => false
    t.string   "email",      :limit => 60
    t.string   "location",   :limit => 45
    t.text     "comentario", :limit => 2147483647,                  :null => false
    t.datetime "data",                                              :null => false
    t.string   "arquivo",    :limit => 80
    t.string   "libera",     :limit => 1,          :default => "0", :null => false
  end

  create_table "comments", :primary_key => "ID_Comment", :force => true do |t|
    t.string   "Author",        :limit => 250
    t.string   "Email",         :limit => 50
    t.integer  "Topic",         :limit => 11
    t.string   "KnowHow",       :limit => 250,        :default => "0"
    t.string   "Community",     :limit => 250
    t.string   "Interests",     :limit => 250
    t.string   "Homepage",      :limit => 100
    t.text     "Comment",       :limit => 2147483647
    t.datetime "Date_Included"
    t.integer  "Acknowleged",   :limit => 3,          :default => 0
  end

  create_table "continentes", :primary_key => "ID_Country", :force => true do |t|
    t.string "Name_Portuguese", :limit => 50
    t.string "Name_English",    :limit => 50
    t.string "Name_Spanish",    :limit => 50
    t.string "continente",      :limit => 20, :default => "", :null => false
  end

  create_table "countries", :primary_key => "ID_Country", :force => true do |t|
    t.string "Name_Portuguese", :limit => 50
    t.string "Name_English",    :limit => 50
    t.string "Name_Spanish",    :limit => 50
    t.string "continente",      :limit => 20, :default => "", :null => false
  end

  create_table "destaque", :id => false, :force => true do |t|
    t.integer  "ID_Language", :limit => 11, :default => 0, :null => false
    t.datetime "dia"
    t.integer  "destaque1",   :limit => 11, :default => 0, :null => false
    t.integer  "destaque2",   :limit => 11, :default => 0, :null => false
    t.integer  "destaque3",   :limit => 11, :default => 0, :null => false
    t.integer  "proct1",      :limit => 11, :default => 0, :null => false
    t.integer  "proct2",      :limit => 11, :default => 0, :null => false
    t.integer  "proct3",      :limit => 11, :default => 0, :null => false
  end

  create_table "editions", :primary_key => "ID", :force => true do |t|
    t.integer  "ID_ProjectDetail", :limit => 11, :default => 0, :null => false
    t.integer  "ID_Editor",        :limit => 11
    t.datetime "Data_Assignment"
    t.datetime "Data_Conclusion"
  end

  add_index "editions", ["ID"], :name => "ID"
  add_index "editions", ["ID_ProjectDetail"], :name => "ID_Project"

  create_table "knowhows", :primary_key => "ID_KnowHow", :force => true do |t|
    t.string "Description_Portugese", :limit => 50
    t.string "Description_English",   :limit => 50
    t.string "Description_Spanish",   :limit => 50
  end

  add_index "knowhows", ["ID_KnowHow"], :name => "ID_KnowHow"

  create_table "languages", :primary_key => "ID_Language", :force => true do |t|
    t.string "Name_Portuguese", :limit => 50
    t.string "Name_English",    :limit => 50
    t.string "Name_Spanish",    :limit => 50
  end

  add_index "languages", ["ID_Language"], :name => "ID_Language"
  add_index "languages", ["ID_Language"], :name => "PRIMARY_KEY"

  create_table "linkcategories", :primary_key => "ID_LinkCategory", :force => true do |t|
    t.string "Title_Portugese", :limit => 50, :default => "", :null => false
    t.string "Title_English",   :limit => 50
    t.string "Title_Spanish",   :limit => 50
  end

  add_index "linkcategories", ["ID_LinkCategory"], :name => "ID_Category"

  create_table "links", :primary_key => "ID_Link", :force => true do |t|
    t.integer  "ID_LinkType",     :limit => 11
    t.integer  "ID_LinkCategory", :limit => 11
    t.integer  "ID_Status",       :limit => 11,         :default => 0, :null => false
    t.integer  "ID_Language",     :limit => 11
    t.integer  "ID_Editor",       :limit => 11
    t.string   "Suggestor_Name",  :limit => 50
    t.string   "Suggestor_Email", :limit => 50
    t.string   "Homepage",        :limit => 250
    t.text     "Description",     :limit => 2147483647
    t.datetime "Date_Suggested"
    t.text     "Comment",         :limit => 2147483647
    t.datetime "Start_Edition"
    t.datetime "End_Edition"
    t.text     "Editor_Comment",  :limit => 2147483647
  end

  add_index "links", ["ID_Link"], :name => "ID_Link"
  add_index "links", ["ID_Status"], :name => "ID_Status"

  create_table "linkstatus", :primary_key => "ID_Status", :force => true do |t|
    t.string "Description_Portugese", :limit => 50
    t.string "Description_English",   :limit => 50
    t.string "Description_Spanish",   :limit => 50
  end

  add_index "linkstatus", ["ID_Status"], :name => "ID_Status"

  create_table "linktypes", :primary_key => "ID_LinkType", :force => true do |t|
    t.string "Name_Portugese", :limit => 50
    t.string "Name_English",   :limit => 50
    t.string "Name_Spanish",   :limit => 50
  end

  add_index "linktypes", ["ID_LinkType"], :name => "ID_LinkType"

  create_table "murals", :primary_key => "ID_Mural", :force => true do |t|
    t.integer  "ID_Language",    :limit => 11,         :default => 0, :null => false
    t.integer  "ID_Author",      :limit => 11,         :default => 0, :null => false
    t.string   "Photo",          :limit => 250
    t.text     "Abstract",       :limit => 2147483647
    t.text     "Article",        :limit => 2147483647
    t.integer  "IsLink",         :limit => 3
    t.integer  "IsPublished",    :limit => 3
    t.string   "Link",           :limit => 250
    t.datetime "Date_Inserted"
    t.datetime "Date_Published"
  end

  add_index "murals", ["ID_Author"], :name => "ID_Author"
  add_index "murals", ["ID_Language"], :name => "ID_Language"
  add_index "murals", ["ID_Mural"], :name => "ID_Mural"
  add_index "murals", ["ID_Mural"], :name => "PRIMARY_KEY"

  create_table "projectcategories", :primary_key => "ID_Category", :force => true do |t|
    t.string "Title_Portuguese", :limit => 50, :default => "", :null => false
    t.string "Title_English",    :limit => 50
    t.string "Title_Spanish",    :limit => 50
  end

  add_index "projectcategories", ["ID_Category"], :name => "ID_Category"

  create_table "projectcontacts", :primary_key => "ID_Contact", :force => true do |t|
    t.integer "ID_Project",            :limit => 11,         :default => 0,  :null => false
    t.string  "First_Name",            :limit => 50
    t.string  "Last_Name",             :limit => 50
    t.string  "Title",                 :limit => 100
    t.string  "Organization",          :limit => 100
    t.text    "Address",               :limit => 2147483647
    t.string  "ID_Country",            :limit => 3,          :default => "", :null => false
    t.string  "Telephone",             :limit => 50
    t.string  "Fax",                   :limit => 50
    t.string  "Email",                 :limit => 50,         :default => "", :null => false
    t.string  "Homepage",              :limit => 50
    t.text    "Languages_Read",        :limit => 2147483647
    t.text    "Languages_Written",     :limit => 2147483647
    t.text    "Languages_Spoken",      :limit => 2147483647
    t.integer "Interest_Online",       :limit => 3
    t.integer "Interest_Face_To_Face", :limit => 3
    t.integer "Receive_Email_Notes",   :limit => 3
    t.integer "ID_PreferredLanguage",  :limit => 11,         :default => 0,  :null => false
  end

  add_index "projectcontacts", ["ID_Country"], :name => "ID_Country"
  add_index "projectcontacts", ["ID_PreferredLanguage"], :name => "ID_PreferredLanguage"
  add_index "projectcontacts", ["ID_Project"], :name => "ID_Project"
  add_index "projectcontacts", ["ID_Contact"], :name => "ID_User"
  add_index "projectcontacts", ["Email"], :name => "UsersEmail"

  create_table "projectdetails", :primary_key => "ID_ProjectDetail", :force => true do |t|
    t.integer  "ID_Project",                  :limit => 11,         :default => 0, :null => false
    t.integer  "ID_Language",                 :limit => 11,         :default => 0, :null => false
    t.integer  "ID_Status",                   :limit => 11,         :default => 0, :null => false
    t.string   "Title",                       :limit => 100
    t.datetime "Insert_Date"
    t.datetime "Revision_Date"
    t.datetime "Public_Date"
    t.integer  "ID_Revisor",                  :limit => 11
    t.string   "Version_Type",                :limit => 1
    t.string   "Community_Name",              :limit => 250
    t.text     "Community_Demographics",      :limit => 2147483647
    t.string   "City",                        :limit => 50
    t.string   "ID_Country",                  :limit => 3
    t.string   "Beginning_Date",              :limit => 4
    t.text     "Services_Offered",            :limit => 2147483647
    t.text     "Primary_Problems_Resolved",   :limit => 2147483647
    t.text     "Secondary_Problems_Resolved", :limit => 2147483647
    t.text     "Beneficiaries_Number",        :limit => 2147483647
    t.text     "Beneficiaries_Direct",        :limit => 2147483647
    t.text     "Beneficiaries_Indirect",      :limit => 2147483647
    t.text     "Target_Population_Who",       :limit => 2147483647
    t.text     "Target_Population_Number",    :limit => 2147483647
    t.text     "Authenticity_Note",           :limit => 2147483647
    t.text     "Original_Objectives",         :limit => 2147483647
    t.text     "Results_To_Date",             :limit => 2147483647
    t.text     "Positive_Effects",            :limit => 2147483647
    t.text     "Negative_Effects",            :limit => 2147483647
    t.text     "Success_Factors",             :limit => 2147483647
    t.text     "Difficulties",                :limit => 2147483647
    t.text     "Project_Needs",               :limit => 2147483647
    t.text     "Project_Description",         :limit => 2147483647
    t.text     "Number_Employees",            :limit => 2147483647
    t.text     "Number_Hoursi",               :limit => 2147483647
    t.text     "Number_Volunteers",           :limit => 2147483647
    t.text     "Number_Hours",                :limit => 2147483647
    t.text     "Funding_Total",               :limit => 2147483647
    t.text     "Funders",                     :limit => 2147483647
    t.text     "Donation_Value",              :limit => 2147483647
    t.text     "Materials",                   :limit => 2147483647
    t.text     "Donors",                      :limit => 2147483647
    t.text     "Loan_Total",                  :limit => 2147483647
    t.text     "Loan_For",                    :limit => 2147483647
    t.text     "Fees_Total",                  :limit => 2147483647
    t.text     "Fees_For",                    :limit => 2147483647
    t.text     "Context_Details",             :limit => 2147483647
    t.text     "Project_Evolution",           :limit => 2147483647
    t.text     "Initial_Idea_Who",            :limit => 2147483647
    t.text     "Preliminary_Planning_Who",    :limit => 2147483647
    t.text     "Implementation_Who",          :limit => 2147483647
    t.text     "Implementation_Funding",      :limit => 2147483647
    t.text     "Maintenance_Who",             :limit => 2147483647
    t.text     "Maintenance_Funding",         :limit => 2147483647
    t.text     "Maintenance_Changes",         :limit => 2147483647
    t.text     "Oversight_Who",               :limit => 2147483647
    t.text     "Advisors_Who",                :limit => 2147483647
    t.text     "Members_Who",                 :limit => 2147483647
    t.text     "Members_Changes",             :limit => 2147483647
    t.text     "Evaluation_Who",              :limit => 2147483647
    t.text     "Evaluation_How",              :limit => 2147483647
    t.text     "Outside_Actors_Who",          :limit => 2147483647
    t.text     "Outside_Actors_What",         :limit => 2147483647
    t.text     "Inside_Actors_Who",           :limit => 2147483647
    t.text     "Inside_Actors_What",          :limit => 2147483647
    t.text     "Related_Links",               :limit => 2147483647
    t.text     "Pamphlets",                   :limit => 2147483647
    t.text     "Articles",                    :limit => 2147483647
    t.text     "Photographs",                 :limit => 2147483647
    t.text     "Budget",                      :limit => 2147483647
    t.text     "List_Of_Funders",             :limit => 2147483647
    t.text     "Evaluations",                 :limit => 2147483647
    t.datetime "Last_Author_Revision"
    t.integer  "Hit_Count",                   :limit => 10,         :default => 0
    t.text     "Perfil_Resp",                 :limit => 2147483647
    t.text     "Inst_Apoio",                  :limit => 2147483647
    t.text     "resumo",                      :limit => 2147483647
    t.string   "id_afiliacao",                :limit => 10
    t.text     "afiliacao",                   :limit => 2147483647
    t.text     "afiliacao1",                  :limit => 2147483647,                :null => false
    t.text     "afiliacao2",                  :limit => 2147483647,                :null => false
    t.text     "chamada",                     :limit => 2147483647
    t.text     "release",                     :limit => 2147483647
    t.integer  "boton1s",                     :limit => 1
    t.integer  "boton1n",                     :limit => 1
    t.integer  "boton2s",                     :limit => 1
    t.integer  "boton2n",                     :limit => 1
    t.integer  "boton3s",                     :limit => 1
    t.integer  "boton3n",                     :limit => 1
    t.integer  "boton4s",                     :limit => 1
    t.integer  "boton4n",                     :limit => 1
    t.integer  "boton5s",                     :limit => 1
    t.integer  "boton5n",                     :limit => 1
    t.integer  "boton6s",                     :limit => 1
    t.integer  "boton6n",                     :limit => 1
    t.integer  "boton7n",                     :limit => 1
    t.integer  "boton7s",                     :limit => 1
    t.integer  "boton8n",                     :limit => 1
    t.integer  "boton8s",                     :limit => 1
    t.integer  "utils",                       :limit => 6,          :default => 0, :null => false
    t.integer  "utiln",                       :limit => 6,          :default => 0, :null => false
    t.text     "comentarios",                 :limit => 2147483647,                :null => false
    t.integer  "percentual",                  :limit => 3,          :default => 0, :null => false
    t.integer  "postagelivre",                :limit => 11,         :default => 0, :null => false
    t.integer  "ultimapag",                   :limit => 2
  end

  add_index "projectdetails", ["ID_Language"], :name => "ID_Language"
  add_index "projectdetails", ["ID_Project"], :name => "ID_Project"
  add_index "projectdetails", ["ID_ProjectDetail"], :name => "ID_ProjectDetails"
  add_index "projectdetails", ["ID_Status"], :name => "ID_Status"
  add_index "projectdetails", ["ID_Project", "ID_Language"], :name => "PRIMARY_KEY"

  create_table "projectmaterial", :primary_key => "ID_Material", :force => true do |t|
    t.integer "ID_Project",       :limit => 11,         :default => 0,  :null => false
    t.text    "Title_Portugese",  :limit => 2147483647
    t.text    "Title_English",    :limit => 2147483647
    t.text    "Title_Spanish",    :limit => 2147483647
    t.string  "File_Name",        :limit => 250,        :default => "", :null => false
    t.string  "Content_Type",     :limit => 50
    t.text    "Title_Portugese2", :limit => 2147483647
    t.text    "Title_English2",   :limit => 2147483647
    t.text    "Title_Spanish2",   :limit => 2147483647
    t.string  "File_Name2",       :limit => 250
    t.text    "Title_Portugese3", :limit => 2147483647
    t.text    "Title_English3",   :limit => 2147483647
    t.text    "Title_Spanish3",   :limit => 2147483647
    t.string  "File_Name3",       :limit => 250
    t.text    "Title_Portugese4", :limit => 2147483647
    t.text    "Title_English4",   :limit => 2147483647
    t.text    "Title_Spanish4",   :limit => 2147483647
    t.string  "File_Name4",       :limit => 250
  end

  add_index "projectmaterial", ["ID_Material"], :name => "ID_Material"
  add_index "projectmaterial", ["ID_Project"], :name => "ID_Project"
  add_index "projectmaterial", ["ID_Project", "File_Name"], :name => "PRIMARY_KEY"

  create_table "projects", :primary_key => "ID_Project", :force => true do |t|
    t.integer  "ID_Author",         :limit => 11, :default => 0, :null => false
    t.integer  "ID_Status",         :limit => 11
    t.integer  "ID_SubCategory",    :limit => 11, :default => 0, :null => false
    t.integer  "ID_OrgLanguage",    :limit => 11
    t.datetime "Insert_Date"
    t.integer  "ID_ProjectContact", :limit => 11
    t.string   "Email_ComCat",      :limit => 50
  end

  add_index "projects", ["ID_SubCategory"], :name => "ID_Category"
  add_index "projects", ["ID_Project"], :name => "ID_Projeto"
  add_index "projects", ["ID_Author"], :name => "ID_User"

  create_table "projectstatus", :primary_key => "ID_Status", :force => true do |t|
    t.string "Description_Portugese", :limit => 50
    t.string "Description_English",   :limit => 50
    t.string "Description_Spanish",   :limit => 50
  end

  add_index "projectstatus", ["ID_Status"], :name => "ID_Status"

  create_table "projectsubcategories", :primary_key => "ID_SubCategory", :force => true do |t|
    t.integer "ID_Category",            :limit => 11,         :default => 0, :null => false
    t.string  "Title_Portuguese",       :limit => 50
    t.text    "Description_Portuguese", :limit => 2147483647
    t.string  "Title_English",          :limit => 50
    t.text    "Description_English",    :limit => 2147483647
    t.string  "Title_Spanish",          :limit => 50
    t.text    "Description_Spanish",    :limit => 2147483647
  end

  add_index "projectsubcategories", ["ID_Category"], :name => "ID_Category"
  add_index "projectsubcategories", ["ID_SubCategory"], :name => "ID_SubCategory"

  create_table "projectsuggestions", :primary_key => "ID_Sugestion", :force => true do |t|
    t.integer  "ID_Author",    :limit => 11
    t.integer  "ID_Category",  :limit => 11
    t.integer  "ID_Status",    :limit => 11,         :default => 0, :null => false
    t.string   "Title",        :limit => 50
    t.text     "Abstract",     :limit => 2147483647
    t.datetime "InsertDate"
    t.datetime "RevisionDate"
  end

  add_index "projectsuggestions", ["ID_Status"], :name => "ID_Status"
  add_index "projectsuggestions", ["ID_Sugestion"], :name => "ID_Sugestion"

  create_table "publications", :primary_key => "ID_Publication", :force => true do |t|
    t.integer  "ID_Language",    :limit => 11,         :default => 0, :null => false
    t.string   "Media",          :limit => 100
    t.string   "Author",         :limit => 100
    t.string   "Title",          :limit => 250
    t.text     "Body",           :limit => 2147483647
    t.datetime "Date_Published"
    t.datetime "Date_Inserted"
    t.datetime "Date_Printed"
    t.integer  "Visibility",     :limit => 3
    t.integer  "IsLink",         :limit => 3
  end

  add_index "publications", ["ID_Language"], :name => "ID_Language"
  add_index "publications", ["ID_Publication"], :name => "ID_Publication"

  create_table "roles", :primary_key => "ID_Role", :force => true do |t|
    t.string "Name_Portugese", :limit => 50
    t.string "Name_English",   :limit => 50
    t.string "Name_Spanish",   :limit => 50
  end

  add_index "roles", ["ID_Role"], :name => "ID_Role"

  create_table "sponsors", :primary_key => "ID_Sponsor", :force => true do |t|
    t.string   "SponsorName",          :limit => 100
    t.text     "Address",              :limit => 2147483647
    t.integer  "Allow_Publicity",      :limit => 3
    t.integer  "Individual",           :limit => 3
    t.text     "HowHeardAbout",        :limit => 2147483647
    t.string   "Email",                :limit => 50
    t.text     "Comment",              :limit => 2147483647
    t.text     "Admin_Comment",        :limit => 2147483647
    t.datetime "Date_Included"
    t.decimal  "Donation",                                   :precision => 20, :scale => 4
    t.string   "Currency_Unit",        :limit => 4
    t.datetime "Date_Donation"
    t.integer  "Boleto_Sent",          :limit => 3
    t.datetime "Boleto_Date"
    t.integer  "ID_PreferredLanguage", :limit => 11
    t.text     "tipoparceria"
    t.integer  "valor",                :limit => 10
    t.string   "formapg",              :limit => 20
    t.integer  "outrovalor",           :limit => 11
  end

  add_index "sponsors", ["ID_Sponsor"], :name => "ID_Sponsor_3", :unique => true
  add_index "sponsors", ["ID_Sponsor"], :name => "ID_Donation"
  add_index "sponsors", ["ID_Sponsor"], :name => "ID_Sponsor"
  add_index "sponsors", ["ID_Sponsor"], :name => "ID_Sponsor_2"

  create_table "suggestions", :primary_key => "ID_Suggestion", :force => true do |t|
    t.integer  "ID_SuggestionType", :limit => 11
    t.integer  "ID_SubCategory",    :limit => 11
    t.integer  "ID_Status",         :limit => 11
    t.integer  "ID_Language",       :limit => 11,         :default => 0, :null => false
    t.string   "Suggestor_Name",    :limit => 50
    t.string   "Email",             :limit => 50
    t.datetime "Date_Suggested"
    t.string   "Title",             :limit => 100
    t.text     "Suggestion",        :limit => 2147483647
    t.text     "Final_Version",     :limit => 2147483647
    t.integer  "ID_Editor",         :limit => 11
    t.datetime "Start_Edition"
    t.datetime "End_Edition"
    t.integer  "ID_Translator",     :limit => 11
    t.datetime "Start_Translation"
    t.datetime "End_Translation"
    t.integer  "ID_OrgSuggestion",  :limit => 11
    t.string   "Link",              :limit => 250
    t.string   "Author",            :limit => 50
    t.string   "Author_Password",   :limit => 10
    t.integer  "ID_Evaluator",      :limit => 11
    t.datetime "Start_Evaluation"
    t.datetime "End_Evaluation"
    t.text     "Evaluator_Comment", :limit => 2147483647
    t.datetime "Date_Published"
  end

  add_index "suggestions", ["ID_Language"], :name => "ID_Language"
  add_index "suggestions", ["ID_Suggestion"], :name => "ID_Suggestion"

  create_table "suggestionstatus", :primary_key => "ID_Status", :force => true do |t|
    t.string "Description_Portugese", :limit => 50
    t.string "Description_English",   :limit => 50
    t.string "Description_Spanish",   :limit => 50
  end

  add_index "suggestionstatus", ["ID_Status"], :name => "ID_Status"

  create_table "suggestiontypes", :primary_key => "ID_SuggestionType", :force => true do |t|
    t.string "Description", :limit => 50, :default => "", :null => false
  end

  add_index "suggestiontypes", ["Description"], :name => "Description"
  add_index "suggestiontypes", ["ID_SuggestionType"], :name => "ID_SuggestionType"

  create_table "translationrequests", :primary_key => "ID_Request", :force => true do |t|
    t.integer  "ID_ProjectDetail", :limit => 8
    t.string   "Languages",        :limit => 250
    t.string   "Problem",          :limit => 250
    t.string   "Author",           :limit => 250
    t.string   "KnowHow",          :limit => 250
    t.string   "Community",        :limit => 250
    t.string   "Organization",     :limit => 250
    t.string   "Address",          :limit => 250
    t.string   "Email",            :limit => 50
    t.string   "Phone",            :limit => 50
    t.string   "Fax",              :limit => 50
    t.string   "Homepage",         :limit => 100
    t.text     "Comment",          :limit => 2147483647
    t.datetime "Date_Included"
    t.integer  "Acknowleged",      :limit => 3,          :default => 0
  end

  create_table "translations", :primary_key => "ID", :force => true do |t|
    t.integer  "ID_Project",      :limit => 11, :default => 0, :null => false
    t.integer  "ID_OrgLanguage",  :limit => 11
    t.integer  "ID_DestLanguage", :limit => 11
    t.integer  "ID_Translator",   :limit => 11, :default => 0, :null => false
    t.datetime "Data_Assignment"
    t.datetime "Data_Conclusion"
  end

  add_index "translations", ["ID"], :name => "ID"
  add_index "translations", ["ID_Project"], :name => "ID_Project"
  add_index "translations", ["ID_Translator"], :name => "ID_Translator"

  create_table "useractivities", :primary_key => "ID_Activity", :force => true do |t|
    t.integer  "ID_User",       :limit => 11,         :default => 0, :null => false
    t.integer  "ID_Actor",      :limit => 11,         :default => 0, :null => false
    t.datetime "Activity_Date"
    t.text     "Activity",      :limit => 2147483647
  end

  add_index "useractivities", ["ID_Actor"], :name => "ID_Activator"
  add_index "useractivities", ["ID_Activity"], :name => "ID_Activity"
  add_index "useractivities", ["ID_User"], :name => "ID_User"
  add_index "useractivities", ["ID_Activity"], :name => "PRIMARY_KEY"

  create_table "usercategories", :primary_key => "ID_UserCategory", :force => true do |t|
    t.string  "Description_Portugese", :limit => 50
    t.string  "Description_English",   :limit => 50
    t.string  "Description_Spanish",   :limit => 50
    t.integer "Volunteer_Target",      :limit => 3
    t.integer "Change_Possible",       :limit => 3
    t.integer "Is_Volunteer",          :limit => 3
  end

  add_index "usercategories", ["ID_UserCategory"], :name => "ID_UserType"

  create_table "users", :primary_key => "ID_User", :force => true do |t|
    t.integer  "ID_UserCategory",       :limit => 11,         :default => 0,  :null => false
    t.integer  "ID_PreferredLanguage",  :limit => 11,         :default => 0,  :null => false
    t.string   "ID_Country",            :limit => 3
    t.string   "First_Name",            :limit => 50
    t.string   "Last_Name",             :limit => 50
    t.integer  "sexo",                  :limit => 1
    t.string   "Account",               :limit => 50
    t.string   "Passwrd",               :limit => 50
    t.string   "Title",                 :limit => 100
    t.string   "Organization",          :limit => 100
    t.text     "Address",               :limit => 2147483647
    t.string   "Telephone",             :limit => 50
    t.string   "Fax",                   :limit => 50
    t.string   "Email",                 :limit => 50,         :default => "", :null => false
    t.string   "Homepage",              :limit => 50
    t.string   "Languages_Read",        :limit => 50
    t.string   "Languages_Written",     :limit => 50
    t.string   "Languages_Spoken",      :limit => 50
    t.integer  "Interest_Online",       :limit => 3
    t.integer  "Interest_Face_To_Face", :limit => 3
    t.integer  "Receive_Email_Notes",   :limit => 3
    t.datetime "Register_Date"
    t.integer  "Available",             :limit => 3
    t.datetime "Available_Since"
    t.text     "Admin_Comment",         :limit => 2147483647
    t.text     "perfil",                :limit => 2147483647
    t.string   "Roles",                 :limit => 100
  end

  add_index "users", ["ID_PreferredLanguage"], :name => "ID_PreferredLanguage"
  add_index "users", ["ID_User"], :name => "ID_User"
  add_index "users", ["ID_UserCategory"], :name => "ID_UserType"
  add_index "users", ["Email"], :name => "UsersEmail"
  add_index "users", ["ID_User"], :name => "ID_User_2"

  create_table "volunteers", :primary_key => "ID_Volunteer", :force => true do |t|
    t.text    "Other_Text",         :limit => 2147483647
    t.text    "Areas_Of_Interest",  :limit => 2147483647
    t.text    "Cities_Of_Interest", :limit => 2147483647
    t.text    "Skills_Description", :limit => 2147483647
    t.string  "Time_Available",     :limit => 50
    t.text    "KnowHow",            :limit => 2147483647
    t.integer "ID_Opportunity",     :limit => 3
  end

  add_index "volunteers", ["ID_Volunteer"], :name => "ID_User"

end
