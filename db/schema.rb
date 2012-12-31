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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121216012941) do

  create_table "auth_group", :force => true do |t|
    t.string "name", :limit => 80, :null => false
  end

  add_index "auth_group", ["name"], :name => "name", :unique => true

  create_table "auth_group_permissions", :force => true do |t|
    t.integer "group_id",      :null => false
    t.integer "permission_id", :null => false
  end

  add_index "auth_group_permissions", ["group_id", "permission_id"], :name => "group_id", :unique => true
  add_index "auth_group_permissions", ["group_id"], :name => "auth_group_permissions_425ae3c4"
  add_index "auth_group_permissions", ["permission_id"], :name => "auth_group_permissions_1e014c8f"

  create_table "auth_message", :force => true do |t|
    t.integer "user_id",                       :null => false
    t.text    "message", :limit => 2147483647, :null => false
  end

  add_index "auth_message", ["user_id"], :name => "auth_message_403f60f"

  create_table "auth_permission", :force => true do |t|
    t.string  "name",            :limit => 50,  :null => false
    t.integer "content_type_id",                :null => false
    t.string  "codename",        :limit => 100, :null => false
  end

  add_index "auth_permission", ["content_type_id", "codename"], :name => "content_type_id", :unique => true
  add_index "auth_permission", ["content_type_id"], :name => "auth_permission_1bb8f392"

  create_table "auth_user", :force => true do |t|
    t.string   "username",     :limit => 30,  :null => false
    t.string   "first_name",   :limit => 30,  :null => false
    t.string   "last_name",    :limit => 30,  :null => false
    t.string   "email",        :limit => 75,  :null => false
    t.string   "password",     :limit => 128, :null => false
    t.boolean  "is_staff",                    :null => false
    t.boolean  "is_active",                   :null => false
    t.boolean  "is_superuser",                :null => false
    t.datetime "last_login",                  :null => false
    t.datetime "date_joined",                 :null => false
  end

  add_index "auth_user", ["username"], :name => "username", :unique => true

  create_table "auth_user_groups", :force => true do |t|
    t.integer "user_id",  :null => false
    t.integer "group_id", :null => false
  end

  add_index "auth_user_groups", ["group_id"], :name => "auth_user_groups_425ae3c4"
  add_index "auth_user_groups", ["user_id", "group_id"], :name => "user_id", :unique => true
  add_index "auth_user_groups", ["user_id"], :name => "auth_user_groups_403f60f"

  create_table "auth_user_user_permissions", :force => true do |t|
    t.integer "user_id",       :null => false
    t.integer "permission_id", :null => false
  end

  add_index "auth_user_user_permissions", ["permission_id"], :name => "auth_user_user_permissions_1e014c8f"
  add_index "auth_user_user_permissions", ["user_id", "permission_id"], :name => "user_id", :unique => true
  add_index "auth_user_user_permissions", ["user_id"], :name => "auth_user_user_permissions_403f60f"

  create_table "corretors", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "cep"
    t.string   "cpf"
    t.string   "telefone1"
    t.string   "telefone2"
    t.string   "banco"
    t.string   "agencia"
    t.string   "conta"
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "corretors", ["nome"], :name => "index_corretors_on_nome"

  create_table "cparametros", :force => true do |t|
    t.integer  "operadora_id"
    t.integer  "tipoproposta_id"
    t.integer  "corretor_id"
    t.integer  "maximo"
    t.integer  "minimo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cparametros", ["corretor_id"], :name => "index_cparametros_on_corretor_id"
  add_index "cparametros", ["operadora_id"], :name => "index_cparametros_on_operadora_id"

  create_table "django_content_type", :force => true do |t|
    t.string "name",      :limit => 100, :null => false
    t.string "app_label", :limit => 100, :null => false
    t.string "model",     :limit => 100, :null => false
  end

  add_index "django_content_type", ["app_label", "model"], :name => "app_label", :unique => true

  create_table "django_session", :primary_key => "session_key", :force => true do |t|
    t.text     "session_data", :limit => 2147483647, :null => false
    t.datetime "expire_date",                        :null => false
  end

  create_table "django_site", :force => true do |t|
    t.string "domain", :limit => 100, :null => false
    t.string "name",   :limit => 50,  :null => false
  end

  create_table "histpropostas", :force => true do |t|
    t.integer  "proposta_id"
    t.string   "numero"
    t.integer  "status"
    t.string   "nome_status"
    t.date     "data_status"
    t.integer  "corretor_id"
    t.text     "observacao"
    t.string   "operadora"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operadoras", :force => true do |t|
    t.string   "nome",       :null => false
    t.string   "logo_url"
    t.string   "corretora"
    t.string   "banco"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "marca"
  end

  add_index "operadoras", ["nome"], :name => "index_operadoras_on_nome", :unique => true

  create_table "polls_choice", :force => true do |t|
    t.integer "poll_id",                :null => false
    t.string  "choice",  :limit => 200, :null => false
    t.integer "votes",                  :null => false
  end

  add_index "polls_choice", ["poll_id"], :name => "polls_choice_763e883"

  create_table "polls_poll", :force => true do |t|
    t.string   "question", :limit => 200, :null => false
    t.datetime "pub_date",                :null => false
  end

  create_table "propostas", :force => true do |t|
    t.integer  "operadora_id"
    t.string   "tipo"
    t.string   "numero"
    t.date     "data_entrada"
    t.integer  "status"
    t.string   "nome_status"
    t.date     "data_status"
    t.integer  "corretor_id"
    t.text     "observacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipoproposta_id"
    t.string   "operadora"
  end

  create_table "situacaos", :force => true do |t|
    t.integer  "status"
    t.string   "nomestat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipopropostas", :force => true do |t|
    t.integer  "operadora_id"
    t.string   "tipo"
    t.integer  "lmi"
    t.integer  "lms"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tipopropostas", ["operadora_id"], :name => "index_tipopropostas_on_operadora_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
