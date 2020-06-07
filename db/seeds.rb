# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
SchoolClass.create(title: 'ruby', room_number: '101')
SchoolClass.create(title: 'js', room_number: '102')
Student.create(first_name: 'hyojin', last_name: 'yoo')
Student.create(first_name: 'nupur', last_name: 'mathur')
