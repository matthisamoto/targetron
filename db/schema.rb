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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120611153635) do

  create_table "actions", :force => true do |t|
    t.string   "copy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "audiences", :force => true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demographics", :force => true do |t|
    t.string   "percentage"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "descriptors", :force => true do |t|
    t.string   "copy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hobbies", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "influencers", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "must_haves", :force => true do |t|
    t.string   "item"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "negative_prompts", :force => true do |t|
    t.string   "copy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "neutral_prompts", :force => true do |t|
    t.string   "copy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nick_cage_films", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", :force => true do |t|
    t.string   "copy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spirit_animals", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wisdoms", :force => true do |t|
    t.text     "quote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
