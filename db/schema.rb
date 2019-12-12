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

ActiveRecord::Schema.define(version: 2019_12_12_103952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cartify_addresses", force: :cascade do |t|
    t.string "type"
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.integer "zip"
    t.string "country"
    t.string "phone"
    t.integer "user_id"
    t.bigint "order_id"
    t.index ["order_id"], name: "index_cartify_addresses_on_order_id"
  end

  create_table "cartify_coupons", force: :cascade do |t|
    t.string "name"
    t.decimal "value", precision: 8, scale: 2
  end

  create_table "cartify_credit_cards", force: :cascade do |t|
    t.string "number"
    t.string "name"
    t.string "mm_yy"
    t.string "cvv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cartify_deliveries", force: :cascade do |t|
    t.string "name"
    t.string "duration"
    t.decimal "price", precision: 8, scale: 2
  end

  create_table "cartify_order_items", force: :cascade do |t|
    t.integer "quantity"
    t.decimal "unit_price", precision: 8, scale: 2
    t.decimal "total_price", precision: 8, scale: 2
    t.integer "product_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_cartify_order_items_on_order_id"
  end

  create_table "cartify_order_statuses", force: :cascade do |t|
    t.string "name"
  end

  create_table "cartify_orders", force: :cascade do |t|
    t.decimal "subtotal", precision: 8, scale: 2
    t.decimal "total", precision: 8, scale: 2
    t.integer "user_id"
    t.bigint "order_status_id"
    t.bigint "coupon_id"
    t.bigint "delivery_id"
    t.bigint "credit_card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coupon_id"], name: "index_cartify_orders_on_coupon_id"
    t.index ["credit_card_id"], name: "index_cartify_orders_on_credit_card_id"
    t.index ["delivery_id"], name: "index_cartify_orders_on_delivery_id"
    t.index ["order_status_id"], name: "index_cartify_orders_on_order_status_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cartify_addresses", "cartify_orders", column: "order_id"
  add_foreign_key "cartify_order_items", "cartify_orders", column: "order_id"
  add_foreign_key "cartify_orders", "cartify_coupons", column: "coupon_id"
  add_foreign_key "cartify_orders", "cartify_credit_cards", column: "credit_card_id"
  add_foreign_key "cartify_orders", "cartify_deliveries", column: "delivery_id"
  add_foreign_key "cartify_orders", "cartify_order_statuses", column: "order_status_id"
  add_foreign_key "products", "categories"
end
