# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_26_115548) do

  create_table "digitals", force: :cascade do |t|
    t.string "nro_lote"
    t.string "correo"
    t.string "documento"
    t.integer "nro_pages"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "imglote"
  end

  create_table "indizacions", force: :cascade do |t|
    t.string "tipo_doc"
    t.integer "num_doc"
    t.date "fecha_doc"
    t.integer "ini_fol"
    t.integer "fin_fol"
    t.integer "ini_doc"
    t.integer "fin_doc"
    t.integer "doc_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "correo"
    t.string "clave"
    t.string "nombre"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.string "empresa_id"
    t.string "estado"
    t.string "foto_dir"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nivel"
    t.integer "user_id"
  end

end
