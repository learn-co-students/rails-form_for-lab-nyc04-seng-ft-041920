# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.destroy_all
SchoolClass.destroy_all

SchoolClass.create(title: "Math", room_number: 12)
SchoolClass.create(title: "History", room_number: 109)

Student.create(first_name: "Nicki", last_name: "Minaj")
Student.create(first_name: "Mariah", last_name: "Carey")