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

ActiveRecord::Schema.define(version: 20180413001711) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guest_view_projects", force: :cascade do |t|
    t.integer "guest_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_guest_view_projects_on_guest_id"
    t.index ["project_id"], name: "index_guest_view_projects_on_project_id"
  end

  create_table "guests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_categories", force: :cascade do |t|
    t.integer "project_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_project_categories_on_category_id"
    t.index ["project_id"], name: "index_project_categories_on_project_id"
  end

  create_table "project_comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_comments_on_project_id"
    t.index ["user_id"], name: "index_project_comments_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "mainpicture"
    t.string "video_url"
    t.text "description"
    t.string "tittle"
    t.integer "goal_amount"
    t.datetime "postdate"
    t.datetime "duedate"
    t.string "mark_down"
    t.integer "views"
    t.boolean "outstanding_value"
    t.integer "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promises", force: :cascade do |t|
    t.integer "project_id"
    t.integer "amount"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_promises_on_project_id"
  end

  create_table "user_projects", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_user_projects_on_project_id"
    t.index ["user_id"], name: "index_user_projects_on_user_id"
  end

  create_table "user_promises", force: :cascade do |t|
    t.integer "user_id"
    t.integer "promise_id"
    t.integer "amount"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["promise_id"], name: "index_user_promises_on_promise_id"
    t.index ["user_id"], name: "index_user_promises_on_user_id"
  end

  create_table "user_ratings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_user_ratings_on_project_id"
    t.index ["user_id"], name: "index_user_ratings_on_user_id"
  end

  create_table "user_view_projects", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_user_view_projects_on_project_id"
    t.index ["user_id"], name: "index_user_view_projects_on_user_id"
  end

  create_table "user_wishlists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_user_wishlists_on_project_id"
    t.index ["user_id"], name: "index_user_wishlists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nick"
    t.string "name"
    t.string "lastname"
    t.string "email"
    t.integer "phone"
    t.text "description"
    t.string "password"
    t.string "picture"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
