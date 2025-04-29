# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_04_19_222210) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "card_biomes", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.integer "biome_type", null: false
    t.integer "zone", null: false
    t.integer "temperature", null: false
    t.text "description", null: false
    t.integer "age", null: false
    t.integer "center_q", null: false
    t.integer "center_r", null: false
    t.integer "center_s", null: false
    t.integer "radius", null: false
    t.jsonb "terrain_mapping"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_card_biomes_on_game_id"
  end

  create_table "card_sources", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "terrain_id", null: false
    t.string "type"
    t.jsonb "yields"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_card_sources_on_game_id"
    t.index ["terrain_id"], name: "index_card_sources_on_terrain_id"
  end

  create_table "card_terrains", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "biome_id", null: false
    t.string "type"
    t.integer "q"
    t.integer "r"
    t.integer "s"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["biome_id"], name: "index_card_terrains_on_biome_id"
    t.index ["game_id"], name: "index_card_terrains_on_game_id"
  end

  create_table "game_logs", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.integer "log_type", null: false
    t.jsonb "data", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_logs_on_game_id"
  end

  create_table "game_snapshots", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.jsonb "data", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_snapshots_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "phenotype"
    t.integer "dominance"
    t.jsonb "effects"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quimera_ant_colonies", force: :cascade do |t|
    t.string "name"
    t.bigint "terrain_id", null: false
    t.jsonb "creatures"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["terrain_id"], name: "index_quimera_ant_colonies_on_terrain_id"
  end

  create_table "quimera_ant_colony_genes", force: :cascade do |t|
    t.bigint "gene_id", null: false
    t.bigint "colony_id", null: false
    t.decimal "heritability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colony_id"], name: "index_quimera_ant_colony_genes_on_colony_id"
    t.index ["gene_id"], name: "index_quimera_ant_colony_genes_on_gene_id"
  end

  add_foreign_key "card_biomes", "games"
  add_foreign_key "card_sources", "card_terrains", column: "terrain_id"
  add_foreign_key "card_sources", "games"
  add_foreign_key "card_terrains", "card_biomes", column: "biome_id"
  add_foreign_key "card_terrains", "games"
  add_foreign_key "game_logs", "games"
  add_foreign_key "game_snapshots", "games"
  add_foreign_key "quimera_ant_colonies", "card_terrains", column: "terrain_id"
  add_foreign_key "quimera_ant_colony_genes", "genes"
  add_foreign_key "quimera_ant_colony_genes", "quimera_ant_colonies", column: "colony_id"
end
