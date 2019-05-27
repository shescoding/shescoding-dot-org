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

ActiveRecord::Schema.define(version: 2018_10_28_045740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_resources", id: false, force: :cascade do |t|
    t.integer "resource_id"
    t.integer "category_id"
    t.index ["category_id"], name: "index_categories_resources_on_category_id"
    t.index ["resource_id"], name: "index_categories_resources_on_resource_id"
  end

  create_table "guides", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255
    t.string "alias", limit: 255
    t.string "description", limit: 255
    t.integer "likes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guides_steps", id: false, force: :cascade do |t|
    t.integer "guide_id"
    t.integer "step_id"
    t.index ["guide_id"], name: "index_guides_steps_on_guide_id"
    t.index ["step_id"], name: "index_guides_steps_on_step_id"
  end

  create_table "personas", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "color", limit: 255
    t.text "description"
    t.json "questions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255
    t.string "url", limit: 255
    t.text "description"
    t.string "source", limit: 255
    t.datetime "date"
    t.boolean "public"
    t.integer "likes", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "steps", id: :serial, force: :cascade do |t|
    t.string "type", limit: 255
    t.text "content"
    t.string "level", limit: 255
    t.integer "likes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", id: :serial, force: :cascade do |t|
    t.integer "tag_id"
    t.integer "taggable_id"
    t.string "taggable_type", limit: 255
    t.integer "tagger_id"
    t.string "tagger_type", limit: 255
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

end
