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

ActiveRecord::Schema.define(:version => 20120410003636) do

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
