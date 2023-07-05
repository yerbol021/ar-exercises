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
puts "Please enter a store name:"
store_name = gets.chomp

new_store = Store.new(name: store_name)

if new_store.save
  puts "Store created successfully!"
else
  puts "Error creating store:"
  new_store.errors.full_messages.each do |message|
    puts message
  end
end
