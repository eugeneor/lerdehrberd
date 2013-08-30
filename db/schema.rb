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

ActiveRecord::Schema.define(:version => 20130830032411) do

  create_table "game_board_entries", :force => true do |t|
    t.string   "display_name",                     :null => false
    t.integer  "game_board_id",                    :null => false
    t.integer  "rank",          :default => 99999, :null => false
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "game_board_entries", ["game_board_id"], :name => "index_game_board_entries_on_game_board_id"

  create_table "game_boards", :force => true do |t|
    t.string   "title",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "game_boards", ["title"], :name => "index_game_boards_on_title"

  create_table "users", :force => true do |t|
    t.string   "display_name", :null => false
    t.string   "email",        :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"

end
