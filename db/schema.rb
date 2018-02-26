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

ActiveRecord::Schema.define(version: 20180225160147) do

  create_table "animes", force: :cascade do |t|
    t.string "nom"
    t.string "resume"
    t.date "apparition"
    t.string "statut"
    t.integer "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "producteur_id"
    t.integer "studio_id"
    t.integer "auteur_id"
    t.integer "genre_id"
    t.index ["auteur_id"], name: "index_animes_on_auteur_id", unique: true
    t.index ["genre_id"], name: "index_animes_on_genre_id"
    t.index ["producteur_id"], name: "index_animes_on_producteur_id", unique: true
    t.index ["studio_id"], name: "index_animes_on_studio_id", unique: true
  end

  create_table "auteurs", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
  end

  create_table "commontator_comments", force: :cascade do |t|
    t.string "creator_type"
    t.integer "creator_id"
    t.string "editor_type"
    t.integer "editor_id"
    t.integer "thread_id", null: false
    t.text "body", null: false
    t.datetime "deleted_at"
    t.integer "cached_votes_up", default: 0
    t.integer "cached_votes_down", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cached_votes_down"], name: "index_commontator_comments_on_cached_votes_down"
    t.index ["cached_votes_up"], name: "index_commontator_comments_on_cached_votes_up"
    t.index ["creator_id", "creator_type", "thread_id"], name: "index_commontator_comments_on_c_id_and_c_type_and_t_id"
    t.index ["thread_id", "created_at"], name: "index_commontator_comments_on_thread_id_and_created_at"
  end

  create_table "commontator_subscriptions", force: :cascade do |t|
    t.string "subscriber_type", null: false
    t.integer "subscriber_id", null: false
    t.integer "thread_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscriber_id", "subscriber_type", "thread_id"], name: "index_commontator_subscriptions_on_s_id_and_s_type_and_t_id", unique: true
    t.index ["thread_id"], name: "index_commontator_subscriptions_on_thread_id"
  end

  create_table "commontator_threads", force: :cascade do |t|
    t.string "commontable_type"
    t.integer "commontable_id"
    t.datetime "closed_at"
    t.string "closer_type"
    t.integer "closer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commontable_id", "commontable_type"], name: "index_commontator_threads_on_c_id_and_c_type", unique: true
  end

  create_table "episodes", force: :cascade do |t|
    t.string "nom"
    t.string "resume"
    t.string "sortie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "anime_id"
    t.index ["anime_id"], name: "index_episodes_on_anime_id", unique: true
  end

  create_table "genres", force: :cascade do |t|
    t.string "nom"
    t.string "description"
  end

  create_table "personnages", force: :cascade do |t|
    t.string "nom"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "anime_id"
    t.index ["anime_id"], name: "index_personnages_on_anime_id", unique: true
  end

  create_table "producteurs", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studios", force: :cascade do |t|
    t.string "nom"
    t.date "dateDeCreation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "nom"
    t.string "description"
  end

  create_table "utilisateurs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_utilisateurs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_utilisateurs_on_reset_password_token", unique: true
  end

end
