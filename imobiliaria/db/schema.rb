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

ActiveRecord::Schema.define(version: 20140218165745) do

  create_table "ambientes", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "donos", force: true do |t|
    t.string   "codigo"
    t.string   "nome"
    t.string   "login"
    t.string   "senha"
    t.string   "email"
    t.string   "endereco"
    t.string   "cpf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imovels", force: true do |t|
    t.string   "codigo"
    t.string   "modo"
    t.string   "tipo"
    t.string   "preco"
    t.string   "endereco"
    t.date     "datacadastro"
    t.integer  "dono_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imovels", ["dono_id"], name: "index_imovels_on_dono_id"

  create_table "interessados", force: true do |t|
    t.string   "nome"
    t.string   "login"
    t.string   "senha"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quantidadeambientes", force: true do |t|
    t.string   "quantidade"
    t.integer  "imovel_id"
    t.integer  "ambiente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quantidadeambientes", ["ambiente_id"], name: "index_quantidadeambientes_on_ambiente_id"
  add_index "quantidadeambientes", ["imovel_id"], name: "index_quantidadeambientes_on_imovel_id"

end
