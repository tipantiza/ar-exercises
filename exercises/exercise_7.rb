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
puts "give me a store name and i will try to make it into a store"

input = gets.chomp

@employee = Employee.create(first_name: input)

pp @employee.errors.messages

