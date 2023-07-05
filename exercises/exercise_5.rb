require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts "Total revenue for the entire company is: #{total_revenue}"

average_revenue = Store.sum(:annual_revenue)/Store.count(:name)
puts "Average revenue is: #{average_revenue}"

# Number of stores generating $1M or more in annual sales
high_earning_stores = Store.where('annual_revenue >= ?', 1000000).count
puts "Number of stores generating $1M or more in annual sales is: #{high_earning_stores}"
