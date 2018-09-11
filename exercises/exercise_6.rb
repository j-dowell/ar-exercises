require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jamie", last_name: "Dowell", hourly_rate: 100)
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 50)
@store1.employees.create(first_name: "Other", last_name: "Person", hourly_rate: 40)

@store2.employees.create(first_name: "Another", last_name: "Person", hourly_rate: 30)
@store2.employees.create(first_name: "Test", last_name: "Person", hourly_rate: 20)
@store2.employees.create(first_name: "Tester", last_name: "Person", hourly_rate: 10)

