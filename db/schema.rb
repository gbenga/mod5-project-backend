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

ActiveRecord::Schema.define(version: 2020_07_20_114834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "medicines", force: :cascade do |t|
    t.string "name"
    t.string "instructions"
  end

  create_table "order_medicines", force: :cascade do |t|
    t.integer "order_id"
    t.integer "medicine_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.string "delivery_date"
    t.boolean "no_contact"
  end

  create_table "pharmas", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "website"
    t.string "phone"
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "pharma_id"
    t.integer "medicine_id"
    t.float "price"
    t.integer "quantity"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "sex"
    t.string "dob"
    t.string "phone"
    t.string "address"
    t.string "allergies"
    t.string "password_digest"
    t.string "username"
  end

end
