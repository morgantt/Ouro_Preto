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

ActiveRecord::Schema.define(:version => 20130629235115) do

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

  create_table "clientes", :force => true do |t|
    t.boolean "ativo",           :default => true
    t.string  "nome"
    t.date    "data_nascimento"
    t.string  "endereco"
    t.string  "cep"
    t.string  "municipio"
    t.string  "cpf"
    t.string  "telefone1"
    t.string  "telefone2"
    t.text    "comentario"
  end

  create_table "comissoes", :force => true do |t|
    t.boolean  "ativo",                                         :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "p01",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "p02",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "p03",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "p04",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "p05",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "p06",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "p07",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "p08",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "p09",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "p10",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "p11",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "p12",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "pvita",           :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.boolean  "p01valid",                                      :default => false
    t.boolean  "p02valid",                                      :default => false
    t.boolean  "p03valid",                                      :default => false
    t.boolean  "p04valid",                                      :default => false
    t.boolean  "p05valid",                                      :default => false
    t.boolean  "p06valid",                                      :default => false
    t.boolean  "p07valid",                                      :default => false
    t.boolean  "p08valid",                                      :default => false
    t.boolean  "p09valid",                                      :default => false
    t.boolean  "p10valid",                                      :default => false
    t.boolean  "p11valid",                                      :default => false
    t.boolean  "p12valid",                                      :default => false
    t.boolean  "pvitavalid",                                    :default => false
    t.integer  "tipoproposta_id"
  end

  add_index "comissoes", ["tipoproposta_id"], :name => "index_comissoes_on_tipoproposta_id"

  create_table "contratos", :force => true do |t|
    t.boolean  "ativo",                                         :default => true
    t.integer  "cliente_id"
    t.integer  "corretor_id"
    t.integer  "operadora_id"
    t.integer  "tipoproposta_id"
    t.integer  "proposta_id"
    t.date     "data_venda"
    t.date     "data_vigencia"
    t.decimal  "valor_fatura",    :precision => 9, :scale => 2, :default => 0.0,  :null => false
    t.integer  "vidas"
    t.string   "numero_contrato"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "remuneracao_id"
    t.integer  "comissao_id"
    t.string   "nome"
    t.date     "data_nascimento"
    t.string   "endereco"
    t.string   "cep"
    t.string   "municipio"
    t.string   "cpf"
    t.string   "telefone1"
    t.string   "telefone2"
    t.text     "comentario"
  end

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

  create_table "eventos", :force => true do |t|
    t.date     "data"
    t.string   "tipo_evento"
    t.string   "observacao"
    t.integer  "proposta_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user"
  end

  add_index "eventos", ["proposta_id"], :name => "index_eventos_on_proposta_id"

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

  create_table "recebiveis", :force => true do |t|
    t.boolean  "ativo",                                        :default => true
    t.date     "data_previsao"
    t.decimal  "valor_previsao", :precision => 9, :scale => 2, :default => 0.0,  :null => false
    t.integer  "parcela"
    t.date     "data_recebido"
    t.decimal  "valor_recebido", :precision => 9, :scale => 2, :default => 0.0,  :null => false
    t.integer  "contrato_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "remuneracoes", :force => true do |t|
    t.boolean  "ativo",                                         :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "r01",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "r02",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "r03",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "r04",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "r05",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "r06",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "r07",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "r08",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "r09",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "r10",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "r11",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "r12",             :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "rvita",           :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.boolean  "imp01",                                         :default => false
    t.boolean  "imp02",                                         :default => false
    t.boolean  "imp03",                                         :default => false
    t.boolean  "imp04",                                         :default => false
    t.boolean  "imp05",                                         :default => false
    t.boolean  "imp06",                                         :default => false
    t.boolean  "imp07",                                         :default => false
    t.boolean  "imp08",                                         :default => false
    t.boolean  "imp09",                                         :default => false
    t.boolean  "imp10",                                         :default => false
    t.boolean  "imp11",                                         :default => false
    t.boolean  "imp12",                                         :default => false
    t.boolean  "impvita",                                       :default => false
    t.decimal  "imposto",         :precision => 5, :scale => 2, :default => 0.0,   :null => false
    t.boolean  "r01valid",                                      :default => false
    t.boolean  "r02valid",                                      :default => false
    t.boolean  "r03valid",                                      :default => false
    t.boolean  "r04valid",                                      :default => false
    t.boolean  "r05valid",                                      :default => false
    t.boolean  "r06valid",                                      :default => false
    t.boolean  "r07valid",                                      :default => false
    t.boolean  "r08valid",                                      :default => false
    t.boolean  "r09valid",                                      :default => false
    t.boolean  "r10valid",                                      :default => false
    t.boolean  "r11valid",                                      :default => false
    t.boolean  "r12valid",                                      :default => false
    t.boolean  "rvitavalid",                                    :default => false
    t.integer  "tipoproposta_id"
    t.boolean  "ato_da_venda",                                  :default => true
  end

  add_index "remuneracoes", ["tipoproposta_id"], :name => "index_remuneracoes_on_tipoproposta_id"

  create_table "situacaos", :force => true do |t|
    t.integer  "status"
    t.string   "nomestat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipoeventos", :force => true do |t|
    t.string   "nome"
    t.integer  "numero"
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
    t.boolean  "ativo",        :default => true
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
