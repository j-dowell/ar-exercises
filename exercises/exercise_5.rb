require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts total_revenue
amount_of_stores = Store.count
puts amount_of_stores
average_revenue = total_revenue / amount_of_stores
puts average_revenue

high_earners = Store.where('annual_revenue >= ?', 1000000).count
puts high_earners