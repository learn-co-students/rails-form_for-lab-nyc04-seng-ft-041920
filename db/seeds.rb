Student.destroy_all
SchoolClass.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(first_name: "Senada", last_name: "Kadric")
SchoolClass.create(title: "Bosnian Cuisine", room_number: "23")

puts "============"
puts " HOT STUFF"
puts "============"
