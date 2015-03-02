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

ActiveRecord::Schema.define(version: 20150302002820) do

  create_table "drugs", force: :cascade do |t|
    t.integer  "reference"
    t.string   "name"
    t.string   "atc"
    t.string   "drugbank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genes", force: :cascade do |t|
    t.string   "name"
    t.string   "sequence"
    t.integer  "reference"
    t.string   "uniprot"
    t.string   "symbol"
    t.integer  "isolated_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "genes", ["isolated_id"], name: "index_genes_on_isolated_id"

  create_table "haves", force: :cascade do |t|
    t.integer  "mutation_id"
    t.integer  "publication_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "haves", ["mutation_id"], name: "index_haves_on_mutation_id"
  add_index "haves", ["publication_id"], name: "index_haves_on_publication_id"

  create_table "isolados", force: :cascade do |t|
    t.integer  "id_isolado"
    t.string   "nome"
    t.text     "doenca"
    t.integer  "namostras"
    t.integer  "tax_org"
    t.integer  "id_origem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "isolateds", force: :cascade do |t|
    t.string   "name"
    t.string   "disease"
    t.integer  "n_samples"
    t.integer  "organism_id"
    t.integer  "origin_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "isolateds", ["organism_id"], name: "index_isolateds_on_organism_id"
  add_index "isolateds", ["origin_id"], name: "index_isolateds_on_origin_id"

  create_table "mutations", force: :cascade do |t|
    t.string   "nucleotide"
    t.string   "aminoacid"
    t.string   "hgvs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organismos", force: :cascade do |t|
    t.integer  "tax_org"
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organisms", force: :cascade do |t|
    t.integer  "tax_org"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "origems", force: :cascade do |t|
    t.integer  "id_origem"
    t.string   "tipo"
    t.string   "nome_lab"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "origins", force: :cascade do |t|
    t.string   "type"
    t.string   "lab_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oriigins", force: :cascade do |t|
    t.string   "orig_t"
    t.string   "lab_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publications", force: :cascade do |t|
    t.string   "author"
    t.string   "title"
    t.date     "date"
    t.string   "journal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resists", force: :cascade do |t|
    t.string   "reference"
    t.integer  "mic"
    t.integer  "drug_id"
    t.integer  "isolated_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "resists", ["drug_id"], name: "index_resists_on_drug_id"
  add_index "resists", ["isolated_id"], name: "index_resists_on_isolated_id"

  create_table "stats", force: :cascade do |t|
    t.integer  "n_studies"
    t.text     "info"
    t.integer  "gene_id"
    t.integer  "mutation_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "stats", ["gene_id"], name: "index_stats_on_gene_id"
  add_index "stats", ["mutation_id"], name: "index_stats_on_mutation_id"

end
