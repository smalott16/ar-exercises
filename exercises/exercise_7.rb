require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
Employee.validates :first_name, :last_name, :store_id, presence: true
Employee.validates :hourly_rate, numericality: { only_integer: true }
Store.validates :name, length: { minimum: 3}
Store.validates :annual_revenue, numericality: { greater_than_or_equal_to: 0}

puts "Please input a store name:"
print ">"
store_name = $stdin.gets.chomp

@new_store = Store.new(name: store_name)
puts @new_store.valid?
puts @new_store.errors.full_messages

@new_store = Store.new(name: store_name, annual_revenue: 100000)
puts @new_store.valid?
puts @new_store.errors.full_messages

@employee = Employee.new()
puts @employee.valid?
puts @employee.errors.full_messages

