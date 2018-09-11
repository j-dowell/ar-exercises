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
puts "Enter store name"
input = gets.chomp

store = Store.create(name: input, annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)

store.valid?

store.errors.messages.each do |message|
  puts message
end
