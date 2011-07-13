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

ActiveRecord::Schema.define(:version => 20110713193308) do

  create_table "article_paragraph_types", :force => true do |t|
    t.text     "Descriptio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "article_section_types", :force => true do |t|
    t.text     "Description"
    t.integer  "ArticleText_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "article_text_types", :force => true do |t|
    t.text     "Descriptiion"
    t.integer  "ArticleText_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "section"
  end

  create_table "article_texts", :force => true do |t|
    t.text     "Text"
    t.integer  "SequenceNumber"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "section"
  end

end
