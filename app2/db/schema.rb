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

ActiveRecord::Schema.define(version: 20140616074512) do

  create_table "clients", force: true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.integer  "stock"
    t.float    "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sale_details", force: true do |t|
    t.float    "preciounitario"
    t.float    "cantidad"
    t.float    "importe"
    t.integer  "sale_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sale_details", ["product_id"], name: "index_sale_details_on_product_id"
  add_index "sale_details", ["sale_id"], name: "index_sale_details_on_sale_id"

  create_table "sales", force: true do |t|
    t.date     "fecha"
    t.float    "importe"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales", ["client_id"], name: "index_sales_on_client_id"

end
