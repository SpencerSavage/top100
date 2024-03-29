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

ActiveRecord::Schema[7.0].define(version: 2022_03_11_020849) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "artist_name"
    t.integer "listener_count"
    t.bigint "billboard_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["billboard_id"], name: "index_artists_on_billboard_id"
  end

  create_table "billboards", force: :cascade do |t|
    t.string "genre"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "album"
    t.string "song_length"
    t.bigint "artist_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_songs_on_artist_id"
  end

  add_foreign_key "artists", "billboards"
  add_foreign_key "songs", "artists"
end
