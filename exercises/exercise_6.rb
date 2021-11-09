require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
Store.has_many :employees
Employee.belongs_to :store

@store1.employees.create(first_name: "Kurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Andy", last_name: "Dwyer", hourly_rate: 10)
@store1.employees.create(first_name: "Sarah", last_name: "Michaels", hourly_rate: 45)
@store1.employees.create(first_name: "Shonda", last_name: "Rimes", hourly_rate: 120)

@store2.employees.create(first_name: "Clare", last_name: "Woods", hourly_rate: 37)
@store2.employees.create(first_name: "Kevin", last_name: "Smith", hourly_rate: 25)
@store2.employees.create(first_name: "Ahmed", last_name: "Hassan", hourly_rate: 75)
@store2.employees.create(first_name: "Chelsea", last_name: "Woods", hourly_rate: 50)