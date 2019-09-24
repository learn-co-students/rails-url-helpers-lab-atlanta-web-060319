# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 
# create_table "students", force: :cascade do |t|
#     t.string   "first_name"
#     t.string   "last_name"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false


Student.create(first_name: "Jourdan", last_name: "Hamilton")
Student.create(first_name: "Reina", last_name: "Ewing")
Student.create(first_name: "Brad", last_name: "Bartlett")
Student.create(first_name: "Zach", last_name: "Parker")